Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD4C25522B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744195194; cv=none; b=dIJLT3GJJJYjF5jZ+NIpDec1kNzHWT//a57MHAD19o1FK9LcAiMLYsLfDEwyMCMJ122oEmSisuxOIVT547Zoa27375EH/hhY9A42CxWEyKe3EgzBBsPQebiXp1ZTl04+LlXj9HAojIKGLdQyn0Yaju6WtmHqzOpbdmNJPTYzDMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744195194; c=relaxed/simple;
	bh=KinyXxkpQOcsgOCRJ0djdMSz7cZmSzNFTISW439u2oU=;
	h=To:Subject:From:Message-Id:Date; b=L2XJrroD6r5Jww4S4EGR+2k6k+YS7nrA8nRPcibtB9Wx3KgRqmGuXmTOgkp+Qyy6JyGed6mws2NoUlmVmMvBU3CJYlbLdgphviHN+rYqfloagpPJxn9MeX8umK5hNNcuZ4yFvt9HdRbK/4d4aQh86FhoFImp7zYqnwAIIxSUVmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbptGhZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbptGhZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4642C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744195193;
	bh=KinyXxkpQOcsgOCRJ0djdMSz7cZmSzNFTISW439u2oU=;
	h=To:Subject:From:Date:From;
	b=TbptGhZYBd2KXVp9qoruHAP3b1f8/TVCWNEIU1Ulxk7nlo6aXO4Y2sG1LZmz+fprJ
	 UuSh6lt39t1AnnFMw7YumJxR+u+jb9g8fe3h6Bq2LKvLOzhGUNSrEU4wIsR8NcxAif
	 xPkEeVTUdGXPB2B1WEi3GyQBm+XtLpwgEnvfHdoOPuHrE4Va9+BksO8okCjbGamCKF
	 uXBWLT0ajpAvUP+4liNyeDaZRtO2u27l+5jJpIaazghe5JgljkFbNnMPfSdTbR2L84
	 kJsVFficnDfRAzoYvHa2cxt3CwUYeylZaXkocoAzAQN14MQ2M8LKmgNr8OydWwDiyD
	 ySGrtm3yj5+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E52CC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419519363.27711.16614699764499100976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c952c1cecb5736895c6c0804a1908d6240470f54155ba863f8509586a3976db
Date: Wed, 09 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744195193
