Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3584E14B07E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736094954; cv=none; b=rMmOrPNZRZvxBWjcl370hCd9NVcADsKF+QsnF3K+/QoD2u7R73qrCPyNkmFfAJZSPN7s2Y+25XtwkL3Xsy6SUAaycPCTqV46lJKuUxiI8M4ck+k4+2v+o2l9ctkWQzh6ekKHdYnRYRighZNfsIoebH6jxwApmwTd7smpuNDFY9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736094954; c=relaxed/simple;
	bh=eKtFfN4TNdukA7J5rLG4zy5shpbBEt+yrbO8C5hRR8Y=;
	h=To:Subject:From:Message-Id:Date; b=Ie+PsGvisJYOVeN+Ipw8cycr5QuNfmbW/3yLhOAm3zHmcqXllITTB1rJtzHUdoluqZip7enyHW7B/y2EH5GB/Uucej0PReiZG82Hd8Ns9rjZ5eTCHAvMHGnG902otR23XhulNimLzbVhmTD13hCnFi/h2oI0OHYjUSbT3Wm2g8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJaKYuYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJaKYuYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE851C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736094953;
	bh=eKtFfN4TNdukA7J5rLG4zy5shpbBEt+yrbO8C5hRR8Y=;
	h=To:Subject:From:Date:From;
	b=pJaKYuYjDd5imEwo6f2RSfQXifPS9qShZTNNGsZwgZadxk2/M/so9c7QUyuTdexAG
	 nBmHF5ud2sRPQBMQpXK2I/PEfaImLCUU1gtU2PyktID2rQtF9EN1KoVQW/bsZIdk9M
	 zDcx8Uk3Sd0lFC74HdEizECKQLSKFYT2Yc2VJbmoobwMpp6tjIX2hmPILmxO2bl4bD
	 YWiqDtGRLCb5UwqJZEVQtA1/Cky2y/aZj6n3pmljpY3QLwVIqW4CbUUKAijApQQvSA
	 JjEp7FMJyB/v4pCzOgAGYN6WESt/pyhXJorSaQ6bT/+65e/4qHK0tGGl/KQVA5Yt3F
	 YV4iD9xcRaFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A412CE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609495366.25847.4105223879621077825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da552046e43adca87a77ae0ef5bee53d659837d4dd56620aa75b376420cf01cd
Date: Sun, 05 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736094953
