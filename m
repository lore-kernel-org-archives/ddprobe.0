Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B8C32D7EC
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770224634; cv=none; b=YKwVaVJygD/otrqSmkuExQCDUQMu2MgENKKI/J4ziCT3v0Dj6ZFcrtI8A94oQizpuy+bChFbw9VEtwGeisHH9cnj48hCCjs4hj4AZl6cC2aq1wjuyzcUIJs50ZfGTYAdpHNTG4bIXVNARN2M4lWOUVrouHb4eZy/NpYbXduWwY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770224634; c=relaxed/simple;
	bh=aBw4ofTm1Jblg9e2jSzYBCB4HabOt5SZ8ot+aQDNE+U=;
	h=To:Subject:From:Message-Id:Date; b=TZit1mepS/Kymag9lNAz5ayzox1azZz3ajeUeDK47n8S+d0tZJRsyMUWXVOPSd1Rszx6D3KsqTjuW6QfSyqGVbYmCaX1ZoT0a3rsY7WK9VmuW08DNly+ntBfP/QlVlgFxphKTex1C6RyPlmEMH6BTEe/bCHX37F8nwB9wc5p1L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBdTMCCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBdTMCCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D61C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770224633;
	bh=aBw4ofTm1Jblg9e2jSzYBCB4HabOt5SZ8ot+aQDNE+U=;
	h=To:Subject:From:Date:From;
	b=iBdTMCCAKrsAFksw4nFH7ppp5qkCUw501DX0qqz4CZcLJFJBTJA2c1UUhtw3nSdbz
	 Gha/Ms9LcHs1ZyKtj9xnA+9HAj47ST6XfHYEPQwyw9DSoXuh/VxPR7RC6tdxljlZW3
	 9hqR+ueqeG/9J/nTMkCyx2PJNVOzFT1AvQRgt2T3Wpus5DvzOgh8MFEnWj5r6CZ33J
	 Igb7amyeJHkr7M/ab5iZdCWtkY5G3Ns9l9NZsCS7w0jiDAvoFgZNnnM1T6g4FRgL0L
	 BSggIe4WPe3X6fh7KAmWrI9JRlc104WQ5tGLQgptnFdzo3O1hYlAAdHWhIgCDepE9Q
	 +73XQfV2Rhh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A035DE9D417
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022463364.3944.10512578635559995373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9d03f9898fe7852a07652922a4aa0188ab9823deafd88f949a5dc27638c2ef
Date: Wed, 04 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770224633
