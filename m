Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6274F3839C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718137103; cv=none; b=Cog7Bg7om3EKCD7dz5C+U/hl2Ny/UBWS/SEZkhqNLvjztuQKYvS8ZGW2Kxvs1sy9UR4DysY2YmFvfrx9DDFpVH2sKVZvjNLnbcKgUFf9exTqaCUfqg1Bj5yELizyx9hWfI5lHRFX/V5zTKoESnXLw3Ui5kJGGhornC4FD48sGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718137103; c=relaxed/simple;
	bh=GYC00LAPOXSk6LrTbGM2+ENNLEwqUvpRVDD9G4O/350=;
	h=To:Subject:From:Message-Id:Date; b=W5pm723ROqQbLwJrmSmiSpQh6nuCeuYGmxR3gRBXy5dNuoP99YGmDluaEm0ZZC1ADt6ZWgNZ+rK+S0Lp8kd1dHpldw8dSBV3hHo6qkpaeiEwAP8RNssprqp41E1zGXZZosMjzIJ16xy9fD8reg674iw6dDxwLCAkq9odzwiX4/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caq0vA69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caq0vA69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD054C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718137102;
	bh=GYC00LAPOXSk6LrTbGM2+ENNLEwqUvpRVDD9G4O/350=;
	h=To:Subject:From:Date:From;
	b=caq0vA69OvPf+BDrAHjMMDpx9Pmqy1Eha+8RyVJ7XFbRs1uK8J0luQoHF3axdPj2y
	 0WkxhxysoWYlpqT8GWPtjALq9s6yRvZTLgwy0flO6JjKNNAczTNCF+BPcUuCaCofFQ
	 FaFvfjYvMwA7XXARKnCS5oZcu5JzvINnX1mvBRtXVF7idBoA0f+cZt9EQGD3xMf60s
	 /5aIlAsbsSjDheQDVGnpgw0GQS/UIFDkxPLssfqdWv7jVcqTXq/F3l556Ml8n4GCEF
	 A07dynZLuXhBHE4JMb+kwwZnV54yi5N86LkTipLhr4py/IcMJ9duqfBs2DDwQ5miH7
	 sq/U7i2p/foyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC015C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813710275.23794.14391804552330154989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3b3825d11b05bb89e27b0613ea01c1cc06bcaaf7e1b8f6b3a7e6570071a076
Date: Tue, 11 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718137102
