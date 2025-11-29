Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D138D27E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764457374; cv=none; b=FtDa2EOzRUEQZU/OSiYtpZGO99DPve0zcZ6j0+OT7mJ/vx+9q7kkIDzDqJQD4KH4qYI49utJwdPMPyQG/VyblIRz4buV+MFx4qhn2GeTDhyOigmGIhyfsUC+jELR2R7IsxfK0rpMBjF24BdaDmdiN+La95iLc+wWstReHqKwHhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764457374; c=relaxed/simple;
	bh=BJeBNCLr/oekEAVhfUs1Cl0K+gejmM4+RSgt7/Xgp+c=;
	h=To:Subject:From:Message-Id:Date; b=GefD0fqO+/o7JvPDkftTfCszIwizVy/Els8qFxsyBgMKDnNxsVww8aZq3Dc2NyVU2vLR1m+/0XCnGUvgSYNHIyjVoe0ZO5sOIqE2TbzIOYLe81d1XgvSK/4CljePiJJ1/TpMARCxPkiv0CbPoJ3+pTwLOHMlTXRHrU+e1LqM4ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKPELQaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKPELQaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB36C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764457373;
	bh=BJeBNCLr/oekEAVhfUs1Cl0K+gejmM4+RSgt7/Xgp+c=;
	h=To:Subject:From:Date:From;
	b=rKPELQaamp1ydl8Zax1OmN33U1PO/Qgd4Ph8OE2QqwM45hKk7foxsWntY5PNViTqJ
	 2g/BUT8GPv+Aw/cjbkIpRKyiFxxXNqapw5I3E0NqoUfJHWhM0SzZG6MjQXpCUNXEgE
	 N0N/Zxq/raobaOVq5ZqFwrmbt6j5pNiq/+iTpzPaniUMd4PgeNb9zpyqUv7MDzMoR1
	 VF97MZa6uom7saFP2B6CFkkKMyN2TAG/M5EKr0lxlild2HhFCL8omSnyHdHlF+If9i
	 P1BZ1VLtYd3J1lufVtjn/pqOspwbogWAX3YCwbrhlCOIgjgl+GvBhs9B4TB8rR+81H
	 feHWteFu/Pj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92964CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445737358.9890.16749109507408957242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9369a79ba10fe309679fc1d6553145de8649e93a789c7fc47d35e53c776815
Date: Sat, 29 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764457373
