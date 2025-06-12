Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2095F1AC891
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749709794; cv=none; b=Bkp9e17xA0+3z+bw4xSM8H+nv+r1v5I9tNWZYQx/6chsWQIAXPDRLlXwcrb6JJPPCwCEDaM0nD/8n4KRKEcHTnpTzsEPP32J9uKThNtCvTjUDMcekJmNgG59PPpHAmcENsuCAqiCf4LhPlQj54p0z7R4eHSY/WtWlla78RzMBLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749709794; c=relaxed/simple;
	bh=bIQ+XiLCwhYLHUMRIFVjuSGFLF+cKa23LRvix03A8x4=;
	h=To:Subject:From:Message-Id:Date; b=UoZSiad0CYCcvRwkDutkYWb4ePmLuvCDWtmq90KdeIMiaxLZpz9qWKFc/6GUdEuR+Fld7XKYQU72KIFFi8LQCbI3UpUZwXm+khLN9YP9d88kJHFnuBzNEjc6u5+2ik6Htwo4bdW/M7CaV1+WicRrgeVq36FE5e0rP363+vblC5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQP5nZwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQP5nZwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749709793;
	bh=bIQ+XiLCwhYLHUMRIFVjuSGFLF+cKa23LRvix03A8x4=;
	h=To:Subject:From:Date:From;
	b=YQP5nZweS/+cJNE1o2DM6VGFGJa3Cr9SniXQY/r1pxcZDoGUqrMM/UguK3oAC++vo
	 QFwJujBxtG0mOa4lC+yj6FloQcePOKWYkVlg6Qk1RvSuLKRdNrzT97nNMgw4vRY+T3
	 bdHysIx7vlr/0VI6+Je9YjLsbkYJgdrSN2dZn7qBRPodpq252VOcl9eRN699pnmMgQ
	 P8wFJrH0eMlgGt3v+2+mZ29pPUMbyylJRc1XLRaTbPf24wUTNauL/Xm75kcOOIhB5u
	 66k8F5jeesQzfrrFZUziYeXm6kjEBNVIRYYhdHLArmguPEJgFqiWk5A2e1D2E8Vv9R
	 eM/GjibAKBFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FDC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970979358.5588.5556721168333599913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f703305349509fab07eeeff8439d6dfcce778db4ab9c712ac19930c6deea307
Date: Thu, 12 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749709793
