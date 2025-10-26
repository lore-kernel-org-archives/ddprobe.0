Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD61D5CD9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761444594; cv=none; b=LIEWf1Bkl4TjBylnPUdIkU9ZZF5yIiIy4WN+dIUnt9BSO0BfHmDOhf9ADC7F0AHeutzKQRlT4ZUDYGTRaybmggSk+f0XqLp4qFUUOd7CcpN3xGV4nnx1iORk7twwN/IB2O55qmqNf2D76uHabq5RL8DOPxAALEJDoSS3lNBrs8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761444594; c=relaxed/simple;
	bh=DUAnd8hD3g8sPv3pQBEBhetJ4DojgWkKhTxpp/KNNRg=;
	h=To:Subject:From:Message-Id:Date; b=Hac8EGlOhakkcAaq7pUE/DTv7B5S5SXnot2KbYX+XTR3ZSiGN/IcDnIKo/HoLqzop/qY/WJtTXif9HacBBH1WmvHnolgjJWaVPRji7V5WwKEvcqNK1lLZXDRsVJ5AzPKUiXQwMvjwcFoxAjBzyRZyIcxCVEgiwNEJtQF9wy31W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBGBtFkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBGBtFkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64ECC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761444593;
	bh=DUAnd8hD3g8sPv3pQBEBhetJ4DojgWkKhTxpp/KNNRg=;
	h=To:Subject:From:Date:From;
	b=kBGBtFkpFczMl1V6LNq9kO7iMAauyCgBqy302VF2WcJC8tJm7RiCNHrWV8PjRK/QM
	 Iz613WvmikWPiebbAyvhu0Br7tRwVMOSklIb/AKaseSfAM4sZ15GymfguhIIw2DKXt
	 IK0BDA1xqp+xn4H3CCzo6V7HVvuQ/u7xAwomlMsWgUVgYEgIij8DUUytbP/rmaML7N
	 3K+tLARlGg18yhVTZenJggrihBcoWDueVrPsTCTQzaekMJZx0/7yEvGKqdbQzQyspj
	 Nq1haF/n+Wh67NNz16dSp+E0ob4p/l/ue94hYdaiVT3vW3qHySY+S0Wqm0g7sqzljo
	 YHk5QB2IgqOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B2CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144459358.26176.3497831580412001819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d370db375bbc43dfd256bb574a4471bf4857fbce41befc6079a99c0cf90e24
Date: Sun, 26 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761444593
