Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF792557F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721962555; cv=none; b=uY5oBwEiPH9/I3tEB7QDtz7n/6756k8p9BpXaHWJpxzK1V85Rq3CmGnPCqXQTE2pILRUXrrbF/QJ0y+Fguw8Q8QvtV3zXNEzRIo0sMmcWr0Ov5WzSzCtbCuqrl58PXnsaiBtMd3asIeyIr7LdPfZQFWLd3GIGUbstajjTmphrfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721962555; c=relaxed/simple;
	bh=kzfzxW2kvRJr5jd+JnoXVh/ZmhXbzIXZc9NCQazQpWI=;
	h=To:Subject:From:Message-Id:Date; b=UdHFfMHnUayWWXGOUo3U65M2JTP4wFDbWSBt/djnEw89MbKGYvMHi+E7XPLFrnExnJPU+a06ui3exeLcpJEFKM/MFILdEGUQQnRFbzID00CmcYAyW3U0B1JLYJgTs23m+zBckm1fT8eSKIxLt/oFWkY4nP2wTm/iUMJBjK7h+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWYOkOxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWYOkOxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1EAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721962554;
	bh=kzfzxW2kvRJr5jd+JnoXVh/ZmhXbzIXZc9NCQazQpWI=;
	h=To:Subject:From:Date:From;
	b=PWYOkOxrMaJlC1Q2tXvobfwECxbHrndyGDfRLz43r1zmV90Vu7Iwb3qMN3k2fLC0v
	 aID+r+KFO1f0XZZaoJ6ScWJA/VPa09Uxlifif01wKN8vWMqO2vCX+/K9ScVGHe4G1T
	 +ovUCZLXqOlRtXvboxtofRA9kBO97Q1Aksua3XEqG0cKTkAO+p/zgGJ+Tra7+LHLNe
	 Y8reUKF38K/93q7SPXIFolKa1/b008Gb/LeLi9yN9zVIvTYng052kpvw4G6xAEV/hQ
	 gni+JxO5Y5NiILJ4JJyHUnmcnHTXASLFZRcNv54YEfmhHUQ3wsCJt1f2F7ka2/EA7o
	 SRhXwY5Q4rdvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DD7C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196255366.5851.12936290042419624973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781a1d5b5e1903cd7fdfabd5c850320097f9a595c838128c66bf70356d67993a
Date: Fri, 26 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721962553
