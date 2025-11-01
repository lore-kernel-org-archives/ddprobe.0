Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAF6218AAB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761962394; cv=none; b=XScgDDTMRWzlscGu5/ltsi4vO6UPB5EFpYclGA0IfLnWp5KK3dyrDNTOXbwXYvpQ8nYWjo0OyZE3L40T8LlK3S85csSQ8uiMJeB5k6Z5+x4NC1xWgerK1lHFvYc6+xO+4Jye/uR2v3//I4clU2o6XRpFQaSSSVdWPxizD5U5ELE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761962394; c=relaxed/simple;
	bh=IPV5sgROFbKKnPjwd2g+rgaX5yRu1li/Am4dQADW5X0=;
	h=To:Subject:From:Message-Id:Date; b=pnJFsa2PD3uL93o+6lkplkzVL55clSCAtszPUrHzOW02ELaj3SW4/NqMW280uNxJ/xjlAHEGtO6ZjqzA8pahdaD7Bm8KcI+jXEFzdEbM2GkHIVs9NPYdMFFdhtPjbjQ6+0c1M3cdJSHUMD7RestCmi3p1oj2rQYpktPmqN3Q2zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV7tIHrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV7tIHrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4610C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761962393;
	bh=IPV5sgROFbKKnPjwd2g+rgaX5yRu1li/Am4dQADW5X0=;
	h=To:Subject:From:Date:From;
	b=NV7tIHrXVPFPQh3/ieUFeuycSoGgfamx/Vne4eEzvNkcU4RlMPmj4dT/4iYpi5M8K
	 lVs8mQP+eNRFIvGWjyZaEDLIdFrvtvgXC6BUskbV1hXObUWrbSHISOrc81TPP7yBE8
	 34Toeeoy+hBGYu1a8/Ene4HV20lkFhlGS9IvXsg+U6PR+rsWhvFIvEGVcHpW828ove
	 yKB3HHe0B7Nd+UaUnT0YlGaRPF7MdNaqf88njIx+z/2h4AVG7MUiGMXHkqfaDnk5fJ
	 hM5e6wk4fAubxFzjJNO0L8b0IkZc+BXS7Wm6iMCBimfsuTtSg9ASdh12fwnch7Yv0g
	 JGIl/v/X2y9SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94644CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196239357.3242.12515547539054365493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d84fd39cd22a808b005faabf3ccdda6808f8ce085d887e976fe7885205ff96c
Date: Sat, 01 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761962393
