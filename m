Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594D41E9B06
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744718994; cv=none; b=aM4xJ7iteVHfo6vf6+F0v/EyPJ1uvO0WFaRQHs69K4WCw/Y8NWnPHEw4m5anUm9njXrTO3JpsdtLpnJDNgguyixLaZYDeTu9x5u62+Q05KpFml1fDpwKDUZHV0L8eB0txHlNA1nGy90ypelmM9EyAMq9AuS5SQI5dYOPB4o4XTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744718994; c=relaxed/simple;
	bh=O/KbOySJNgWM07hbPiG1LYxfsktQRwn4bcL8sCIcEA4=;
	h=To:Subject:From:Message-Id:Date; b=KUrP9H3flwgTR6qQHoBTEbc+/z23ybPdoFEbhTrFlGXjlgomLwF+Wc+AD5GISN06R8eEeRevWcD532B0DTKLvD+sti9Xxhab/mpfqERUZFujyCrgQTtczKP2a1rsyT1A9NH830oN1+flP5ubqzW9+xstM9VJbLUb0GY3IzL/hsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcop1/uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcop1/uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFAAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744718993;
	bh=O/KbOySJNgWM07hbPiG1LYxfsktQRwn4bcL8sCIcEA4=;
	h=To:Subject:From:Date:From;
	b=Kcop1/uJpDTjbcAsBRTIXTNYonZWl6pH6KYqOQrTZoTaVu6t4fVz+bsTZRgSE295Y
	 Xh3AhFqGuNX+B8hurhTEfcs1O4OBjQkHyPUWwJHPsb/DG5XcLObUxCyo28Y+9zkjjZ
	 /XWp3INRU5pgN+18DbAOabHEUTT1KfSiUczz8TXbDQjWosEivgmwPUg2H0w9IoOC1+
	 SQsStKmrWlQZ21Xf9n5heNQMm4hM9us/e8ej8gcI+yfjJBlBHhoPSfqLNKDsnvtO1s
	 bqlOnaLQ96By7jXa2URXY02LU+kNGUCKGaPeOm6qferl9XLJPxkXkDzHFXK3bplR32
	 2pLk5BT/0wuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE6CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471899360.25021.15607105354072432693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0dd67d778f9090094be57b23c2ac2e422565192e445f14467681332e34f27c
Date: Tue, 15 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744718993
