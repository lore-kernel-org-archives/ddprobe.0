Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D311EEA8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768449834; cv=none; b=CapyCmS6ZCzBy9Rp7YIF3mqnqCYTS8tO7jVkinIqnKQuEIcDoXGM2gYH+g80MLiXQ0ewrWlokbxAzcX8WGN7sU6xBrXYUf520vmvA9yuiz6aucH9M9vH2blKJjM1RLDU13FKdpwg1gv4Sisptb+spTVGeSAo0YSnanOV15lNxkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768449834; c=relaxed/simple;
	bh=YXcqF30xLRQamLKoSUw/FKEcaeyJfJv265wMS3Nozw0=;
	h=To:Subject:From:Message-Id:Date; b=tQbZP/ZuDhFp5N5dedmB0/fR0LqKuPG/BZmvpbkYjjjw8/u9KIAqYvboRVHfOxyMTY3R/pMvCjg5ni+Zu1J6URglCRWL83iVZW8Lu+B8h7mS2DQVAVSfG6i71H7BekHTDYM0FUABfhiS1MAF5qEBxcoRDfJwNrNHiwivk84uJaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cblj8Xin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cblj8Xin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48EBC19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768449833;
	bh=YXcqF30xLRQamLKoSUw/FKEcaeyJfJv265wMS3Nozw0=;
	h=To:Subject:From:Date:From;
	b=Cblj8XinHuWiGCP3DWGMc821z1umx5uvj17fkMSF5KGPXJb2obxpWioea1ySQFJgm
	 0z2rnllQfPqEGwHna42kbYrWZZjFIAB0H1sQrDPZEmpLN5SyPpQ7izNjC5P6KvEDtx
	 XplHbM2xA2OqZibPSvxwOXByMleXulUQnsaGfjBJ1q6gYeKF59gqRKwrZcnlm1Ktq2
	 YarBKFyDgFsKYxjWTw+BZqZ6Jy8PnUk5ILOBlDLPNr1RuBOCr0TEBafL/FWbAwzczL
	 wrP2mh4VrTxaWxtP16JVAOE+K0UqIPXdzttFzTFqrMiVu2si2yGZpiyWM7Uu9XsOg1
	 5+xi95dfI8Z9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E77D3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844983357.31706.8656548495677804290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4633dc7bbe01ebde7812c494ad24d43e3948b16d983599259e9d556c88cb5cd
Date: Thu, 15 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768449833
