
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_all_groups.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFindAllGroups)
class FindAllGroups implements IFindAllGroups{

  final IGroupRepository _repository;

  FindAllGroups(this._repository);

  @override
  Future<Either<GroupFailures, List<Group>>> execute() {
    return _repository.findAll();
  }
  
}