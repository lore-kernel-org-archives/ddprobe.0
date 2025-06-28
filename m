Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B922192EB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751128794; cv=none; b=nI5dnC2D2zAUGfTkAcv55bajMPqZCFps2S0Q9L6F9fKUGsgvgkYbHtOkVLYjCC/WoNNrbgUmFXTcmjaCSCO8CJZIQQM+QC2cguHV8/Na6+BgbXV0uItWnW1ZKyVLDn5jMrJsbcvOpuU9rQt87bjnEd1AV85Zb+c0RS7W62F660k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751128794; c=relaxed/simple;
	bh=QkVwU2XXeI7Yit94pEYm0XKiMbyYV5uDnlJun7cyTXI=;
	h=To:Subject:From:Message-Id:Date; b=U2xuwyMDT5YhEtrPLBEn/ekw8SPyIogjnofCC7DfDWwHha5NSC5LiFKpZDcMSCwx/73oezCY/7i+XPvhdqrSogc11aTVthkjV6jsV8Gfkxm39Tmo64RcpC8VazXH3oqdT0hDiEDCHMu+E7z1ifDTgkdfKJOwrpORlxGndWL8F4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwFS7+XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwFS7+XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58F1C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751128793;
	bh=QkVwU2XXeI7Yit94pEYm0XKiMbyYV5uDnlJun7cyTXI=;
	h=To:Subject:From:Date:From;
	b=JwFS7+XHUrdmfoPfkr1jfOeEP5QXgfJ/X24iKTKbArLX1Oxsui2wPj8HSckKkEIHu
	 j0zOeW3ODLCl7ED1guIMde/jJSMCB9oEkrHMKZggODA/ptk7si5XCjt5LmOFmDqalz
	 jJe2R511tKhQI4XX1dlXTJlvSYArcce7yVjXVtkgss1ry+HCVtA6vTJHWnLv7c00c2
	 VOWv0Cxo3wLxyrDDxTLOnkOBY8UgMbpjFn+A0IrCi//91ee8hrvgJsAGbKz6rnSPGH
	 JJSk6Ud/1W9dOSCXP3PjeMSFCxDTa4d2xKMz1jkqukh54iesQnoST7us/aBYT8yDzp
	 fhfey1r5SlSug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93520C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112879358.1698.11515284535880046492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c308734dff3340ab3fa9688bc483cd13dfc824d00bc70c3041edac0f534a6db0
Date: Sat, 28 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751128793
