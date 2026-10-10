Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29A37DE85
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791627634; cv=none; b=fEJxKnnwdvDxC3WPscbQbOCwzFpYhHsb526gTR9GGzU688y57ZB2lD4BnHmV9paWUOCWoMjyjc5gIhwDk3H62tBMBnrIDgRMJFEOaN5LNMyS/nCZwYWwKLqjQZUb3j5pp5ZPQKMEul49U+I7VU3GY6ruqX3x/P/HUg9jkpWVg5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791627634; c=relaxed/simple;
	bh=JjaTZQNW4MLzDLBT77/gfM/EBYu05NB1yWa4ko27aKw=;
	h=To:Subject:From:Message-Id:Date; b=CJob068+5lxSPUlGoi/K2pMP60nsm+KGrIsEoeGybEv2tIqtE9+s0hn1IjAp7ZYdT3UzveWSKzR+xHZ5rePp37B6/fv/o88aZY7vE4OtI1HUxwRXP/eW6eJT7no/g1O22JLcn2QJrI7882Kv3rJwClJV2CA3xe/2kSrJumS6X+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMEHcpUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMEHcpUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB157C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791627633;
	bh=JjaTZQNW4MLzDLBT77/gfM/EBYu05NB1yWa4ko27aKw=;
	h=To:Subject:From:Date:From;
	b=EMEHcpUjIpLc0jvAZ52GEnAbO1AFxqAY0uX4PZJ3oVMmyTexxgR1TSY0iatHjI2eo
	 9J3Z6DH5e2VvoEyeCGCao1Aeoah5KkEUz3kWfMoVMtP4FWjQ8zqpmikkdvMPFyAXwm
	 STwJmVtWrJd4i6R9GYHPPveGKh7DB0K9EskdULwRNM8jzLZsP1ipf1gbBuaaW5mvuN
	 HSh4HtYybtEJYFdN+1yPGSSo01iZaOVvkskPxS9scpjimvlh1IXKnEwa17VdHSJcPW
	 9cazyzwf7NzpE2SsRKJJhYZZQHnfldEX8Kcmpo86iF57C/kReww0Hq24C9JKV/dwqs
	 OfnYywQKAVdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B98CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162763368.5346.90353604832582061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219beb8cd18b426f0a3c6907070462163422fa361005d2850d8a1bc69693e038
Date: Sat, 10 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791627633
