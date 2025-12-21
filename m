Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232AD1FC101
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766346234; cv=none; b=HHeLsr44tC/0YdKHj2GXMRB13Q+5dCVq0yktaqH4I5ScpslPFntXL5cfuiG+OYH3Rjia3MeEZ1XMZLfWQgZEwugwGpRxC9xSPgZ5IMBWHXjbY5W+Jmfe9nV0tF2YMIGxt0blPr9cMZqJFXGjdvDz94e1YcD3SNAsgGSMp8Xl1Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766346234; c=relaxed/simple;
	bh=CsUuoTVagha4RfwyzP7xJTeoTb86FuvgQ/e6YjYNpGM=;
	h=To:Subject:From:Message-Id:Date; b=V+ZxnfvBctyMOKIUrbyMuCAMqUeA5Zl+pQn5T6jk7/0zYu0IQRkxYGq1PB0Y+y99pSSZbTTaMwSlKKKkw3LHeEpLNw7QGAthPRQ/pP3XQhhQ8HuRZUpHMD3Ce2objkIg356Eh8AldH4Rvq9FXWg3taHUzL1a+w0vpfqwkC4FWzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YE8Mz3Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YE8Mz3Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7969C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766346233;
	bh=CsUuoTVagha4RfwyzP7xJTeoTb86FuvgQ/e6YjYNpGM=;
	h=To:Subject:From:Date:From;
	b=YE8Mz3Lj5Iw+KpXO2egZM55kog1MAi8PebRxpkgP6V726tFztKcWzMjM59Yd2i+KF
	 fKDlPn0l6eN57Wo64QiYyew18w3olhxveJ/GrQwn4V0nhx4Mxv66oh1ZSEdEk5Rnj4
	 B5+4tRpSajk3qdVMn/naqK+yK5NYufiELKpaGkPxn3FGF8vvKXDPOXMqAPFt2xtv3A
	 8H0AqeQSIGmt8RyIeiaSQpLuJwDv5ChNUO3QQ/KpmvoriEKys8adwGpRWyObJ33lvg
	 DVwITTkLldVmspr0KILxDd/VaBg+UCCZQYqgg0/CdIhyrcZCnaXCoIiNCBQw61+nd2
	 JFcFX6LcKerOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507CE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634623357.20133.966619322447786948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b3ee899851bf813729c15f6ad8a87826e157b8743807f51d9e22269a4b8893
Date: Sun, 21 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766346233
