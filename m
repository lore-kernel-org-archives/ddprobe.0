Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230E5358373
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781869594; cv=none; b=b+OMulbXTTJrfh7nCCU0FUSy2arg2WcsZf3SFLgoofRnrB/Q+V8N8u02rarv6KMCw28jKs9Pk90r8kBZPzm24+OQGESpeVRmVI8mDkDicJCgB5dbmsCu3rkWAseja3FVfHu7KUVp+/kx7ZXdQi8DlgGmyFC5BKkIV3BLYCPrFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781869594; c=relaxed/simple;
	bh=2tvORApuUi7WJxiTSxS3iAuYo8Jiad+e8RULfeTciTE=;
	h=To:Subject:From:Message-Id:Date; b=MJPRm90eO986elN+Zd3KAIrLB1lfRU0WO/9nqVr0Vyaw3o/IDFHziK8nZNbPJbPH9vAft8zsk2DX/zkw+G/uo2z3MPzJqbAMuU6VxcGUM48Hh0PRG5FTp9hkq4H7DXLRA4lMXVOOR5CPYK9MeAcw5Y2T4ZgyNwcE8+BCN+Pj6ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4oYIQiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4oYIQiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781869593;
	bh=2tvORApuUi7WJxiTSxS3iAuYo8Jiad+e8RULfeTciTE=;
	h=To:Subject:From:Date:From;
	b=T4oYIQiXoG1SBixBtEhcJ7vxVWbQ/Y1X2L9Z3T6zSiTUTjJxF8Oz646L4DEOYp6oJ
	 S/YPnO+xl+LZC6YVxc48QCQ2b8+2pAJObpcHR8HjYQOUrL7B6kp54Nrgo8ZI4R58KG
	 Ez40GqX7LLRKl7vaXhbmIq1Un22ITRQ/DAyxqVv0VzVqCYNd1qWR6rC2QrRAO2+iCQ
	 GrdTPEpTdTG0WYVNAxZcLHaXflqaDvIExE158UY2g5piggskzn3mb8VDvLmoIxbBxR
	 ztQdt1TRbodcDiRhf87FegjDHuBf96QurbAE8MS69dP097pK+LYNGkQP1yw1Uu514Y
	 8jiXcByqGlHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6AECD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186959370.22902.17984242601710857865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508e874149d5f0fe9852f9ec17b2085af77c812241ace21deb43c426f93116b8
Date: Fri, 19 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781869593
