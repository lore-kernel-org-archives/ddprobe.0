Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2F7524C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727033754; cv=none; b=QzygohadMgT6EgdWGOjvFKdppICOt/SaFoA6xLQftijOcRPlCVfCqIj9bk9BrLTEQ4MFfmwS9bE8Fk6qhpaNmgd6JOTTOgm2LgmcKGe+Ck1zDz4CtP1zchWrmO2H9WM22TGsEgGj7QiANkjkzPCnm4RKCrVsgnWiaH/Pv4MlJAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727033754; c=relaxed/simple;
	bh=wgaMfSJIAZFETm9jpVaDlD6QxCt1vRKZSv1CbvyFpSE=;
	h=To:Subject:From:Message-Id:Date; b=U+IlHPo2LnqMs81fMarNOuhl1p2zyulOWqkmbZ5RZpuleGuD0DxfBsoJLag0SnN+AMJ7JlhBzav6yoITFGOTE+o1KHCakrol/8Y8+WQ/GDCyTyi8ApboRH0SsP5cUCgxRocdwzKP889tMtTPzsmuCFa5O78u8rnD8O+h4zEFsaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT7KL/gO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT7KL/gO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5935C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727033753;
	bh=wgaMfSJIAZFETm9jpVaDlD6QxCt1vRKZSv1CbvyFpSE=;
	h=To:Subject:From:Date:From;
	b=nT7KL/gOTgQd4nBzyPn2WsCAqNKIXg6nTKza27ccJdAmh7+sOd9KcFfMStU4A7y+x
	 5eN6l7BDR8yjEqHhu+qYIQUEwKJt73UStZxk1izSuDYJBa0AnTkjmqWsI+z7HHx8fp
	 tYpDmggRBYtpAYW7sUcywYg2kHzv2R5nV0vIED0mbmDBIEmYEflCGW3jYkk+6Zu27H
	 QkjSFRtsmf0ykOOs0i8ZOIB3vL81Q22pwDwdjgSerbMI14R3GQrEgbCFGIBU+/l9eb
	 lmDky5rqHWkHIJ1WBYMkJaryZPaZcwbKKM6MwTgbHE+osCXhXMff6bEhFF1ShPBdWC
	 0OHUHmC6QnTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2BCF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703375358.21763.2484433435994146466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0368befcc68b81eba1308164122ace7a40c4522b2140cc5f78a7190220e84a09
Date: Sun, 22 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727033753
