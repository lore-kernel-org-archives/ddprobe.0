Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE1135A53
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777694254; cv=none; b=M8WKUp4qHGkMW1PfNFUxzCFZNQD/bcnRGBzWNTZ/6/Wkvi1GontSxWNrTQp6pIugoz7BE6kL7hQE9UlAcEQnb7CUqBBcrnk7aQrX+E+kWqHWrU4PuZvEtfbkOuMEOg8daZK4RYIziSdo/Mq4UXF9YfVX+KgGgzM6ED+oHf3huBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777694254; c=relaxed/simple;
	bh=vcMfSpzV7vYaYZ3ew0oi2iM5DH36sq6mlOIuiHJ+mgw=;
	h=To:Subject:From:Message-Id:Date; b=EHc6Ruesu0tnksnX033Ns+zLCiKvOf/tL05ZR8COICFJPwxesi2Q+ln+/sJUFnZY90TRwO1GM+6PRtihwV2iMgiecxxU/mQXx+GTv4BtOzwA8KbIEOgSSVCyMsZ+CfZ4AdSYoTGGIKb/VR8pi2V3V3J9hMPuMpTCcH2SGgwktY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU5HE4N8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU5HE4N8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A70C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777694253;
	bh=vcMfSpzV7vYaYZ3ew0oi2iM5DH36sq6mlOIuiHJ+mgw=;
	h=To:Subject:From:Date:From;
	b=FU5HE4N8vVx6Ef43jNB73zJ3rRTWLk9unCCT8eV3Y259h+R9pIKBa1HcuNJuyeHkI
	 hnapUMbQvmgD1ZSGKhAGO9ewWP4PQn8dCMtYQ+3UuMpq4WnAEiAk4B5NFaXbum3U0c
	 fc7GsQzhyxbATfXRyYV2dMqgEIZGH14Bq0BBaVFUNWPgqpYQ9uMtUdnqx4BlSTlTmf
	 TxerPHSrgLjOn1dheO5Vbjd9Z0aVu19hHKh04MMGp6ZIRuXtcf1tbgSzFVJhaHyYp0
	 rG2SOsxEBW8kVU5ZyQhcX68sByP2WeFkodSOEKFkKeUGY9AscAa2SzAIvfCJrQdQRO
	 QJDH86BJFWIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D8CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769425369.18819.13051695410841168640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477508adae205750ae496561cc9c09b4e406764fd40082da8b96952f053a7d30
Date: Sat, 02 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777694253
