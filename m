Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340EA288C04
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748974794; cv=none; b=ObeUXp+w20QFCVPM6u4qC8J+j3pHHHoQ9TK9eqYJenVP9cVV+tkqxDRozEZ2LL0Tf8X8nI6QBtXAuugPq0Cr+K9KSnIlDJ1JWmBIuUyUEO5pU+C1lXTriFkyM+tyb9sS1i/Qc4UNsVnsxdbXctC4T6+RJ9608133a0Dya+BXxcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748974794; c=relaxed/simple;
	bh=bGgrv09Ebd3yy0xZYCnye2qUpcbrQaCjAGS3Bb6+Mxo=;
	h=To:Subject:From:Message-Id:Date; b=o/mZAK7McH4DnBB9sC3DZw/jvFRaH2HoiSDNntzbXQHNKUDFXXUn9gMLvDVAwuecmAnUyr9edNeykSVUeEVtxSQLULe6UMU5Q6r7QHZU69jO4aWqgjJCGUoPDvvG9AwM4LsDMvi4XSFJ5hYgapsyKbqSoWqvChaFxIvdgw1PyNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UslaVha4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UslaVha4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0727C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748974793;
	bh=bGgrv09Ebd3yy0xZYCnye2qUpcbrQaCjAGS3Bb6+Mxo=;
	h=To:Subject:From:Date:From;
	b=UslaVha4aklGMuOE8LCVubGgQzKOdEZvsZ9gFViXEWTldoAQ29Db7jp+Um5FVOLx5
	 Pq3etitb3VM9GeDkK+5oFKnyCIYhAqGJ4Tx6yZm+FG2ZXWOWkJyRpruFdxbJbEHEpR
	 WwmUHmURNpraDRO83WFLezWQGgeLRV+svPe0aWDikCa7fPlaO/zvisZl7XppC7x85l
	 11d13IPW/Y/0ACDN1Azh3e4nfijXBc694fWYxzHmxWBDds3VgJEju4XEIrG3IStR87
	 /QZcLkLrOeG/YVb0oGJiXrxE2KXG/O00e799MZ0Kwjs7coXdHeYr1YuEgS/jdk4rTQ
	 l8AKib6tUYcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91205C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897479358.15215.13580727496663832794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff2c17fa5d0b9c64755524d40d12b3ab61fc4308e04c3c3fd45777d6fb00cfb
Date: Tue, 03 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748974793
