Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6703B182
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718807963; cv=none; b=K4OGrPYRj1avWiMWXFtTEXlhSUmcBsS9QGx1b9af9PdHyqXqSjrzZIol94Yz1NDkmbVhPFc2kgx5u/6lRqOgXkfpf/2qKkNBrdVTV6aY8Ryo7XKnsF3oxPgxVs5MvsFzzKoCJzwA5MZKDHBCUaw77MIKF+Ml8zlnBtzaifi1Ydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718807963; c=relaxed/simple;
	bh=T8G/ZvRLInIv1Uj9wPnzEnO7Cg6VVDrtYwJnQVV9R04=;
	h=To:Subject:From:Message-Id:Date; b=reJ/C8Y7I7nMZ7jB+wk+5tKVq6swPsD6Xn0hNYk81+I3J4rpUk3N+M5zLYPqQv5ypWtzAztGcljRYnkfriR9aRH7Kr3lpT+BHK+BjQb6s3zpMoUfEc7qfk6Cm8LedaZ8MgSm8Uh0jotZchoLEI54LwDw40r1cnyy7KFZSZ/ffIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQk6ZtFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQk6ZtFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4982C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718807962;
	bh=T8G/ZvRLInIv1Uj9wPnzEnO7Cg6VVDrtYwJnQVV9R04=;
	h=To:Subject:From:Date:From;
	b=HQk6ZtFgykgKCdR9nS01iExuZ7I+SuPu3xipWepBq7yRRRL1Z1bz+yz44Dp6PMxhX
	 AO4xncMIQZOynjWhT34unLei0Fe5/WV0PFbCPQETIsak0thly8EOInaYL1jUooOVlG
	 16fg9kZRnoXShC0F8AXI/oBe34S/anitZdw+YmgPuDLPt3WqraReTJxMKxbV35Ns3l
	 AlJmIrVWAqydTr6T6MND3XtMyFfVVV2Fr3mzDtrhQPEc/UbIBrWCbSmPs4qPPHFxMr
	 ZcT150acvPkWo76Gh3tTuHrP8UAeGTKHczXQ0ph4cw6B9ZMJOXLReiBdETtNsXBSUy
	 SIY7RZjPQkNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD370C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880796283.26199.14259124563565216315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036786a2990323cc26d32d784ba76311be46276383eb6bac7334513c8e87c512
Date: Wed, 19 Jun 2024 14:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718807962
