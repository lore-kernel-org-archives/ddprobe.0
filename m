Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CB839FCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776692254; cv=none; b=kIVSjoMq/JaID9xjm1te8N9IupAScfLPYEnOGc7ZN+K2UvdcsyAed9kCDem51/6b9OEmsWNkYAqqr/yaRi0UPTzj7lEM+iBxurPYXYsnG9SlXsgn3z5xx7uMcgZyh50qCOOaIzp5p6T/tWonZR4y1efvfBRF4g9cPrOZ4OKGXBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776692254; c=relaxed/simple;
	bh=H7DoXc88xUCx5yj6W2eLiUwoWNRlMQJumfWX1HaCjbE=;
	h=To:Subject:From:Message-Id:Date; b=QLuDaONH5lqALEzJXIQYshvnQVWTKvfymxswZBJvAXtVgZPiSfYSDOv5W3yoWMuJhRAEF6qrV/WcxMcyJcht3mikKyGv+nFP1JitjCVNE/k1sddh/XoWPrn7MpXziweSVpfK3P2ICGLFujjaHw4WP7CUrUt7p/OyFdVaH8L2S+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS8igwNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS8igwNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96B9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776692253;
	bh=H7DoXc88xUCx5yj6W2eLiUwoWNRlMQJumfWX1HaCjbE=;
	h=To:Subject:From:Date:From;
	b=dS8igwNxnAmIvnasc7XKef8eiiH/OE3GERWLHoxs2m11A12vr93ujLOpscX1Kx8xo
	 3W5kLDvqrR5SCFQ3xOrAsJ+4huBZ4m21y+Lu3rl2V3riZErteDwnc+6HN+xTRAkFiQ
	 rJ4P8ekWFWcIpUgG/HP+QQ3ZpTQMR8NaIhsck2SqhDI2OvMUxO486GuXTmFmhmhWM6
	 G9UOQnwMuqbxIjzJtNrrFwJP0O0LJ8/RK1SzOIAWM0itvfEYy9zYPUrqEm7U4QOa8j
	 yzx84StW7/JoMFmDZ9NrilyGKSkZuz0v6tFSM/k/DuKfikDv3JWIuy0yQy0/WCnP2D
	 TcsO+/rlLvrTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F2F588C4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669225369.31629.4430851517203605390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0019200e465daedef1718b40763877f43f484638c741db3de0aa0264c734fab8
Date: Mon, 20 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776692253
