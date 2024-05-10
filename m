Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7215013D245
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715379743; cv=none; b=g4665eN4hcjXslmPVM3XXuDSTnDzxbt5ShMkpEiV1h+aWuJpc4NtjbfHJN3+lMQRiEgNISYbwCyyUFm2t68p4/iMnmFw+O17fgu2JgOq+37Gyr0WxfCF+uKAUxgNvJTsoH/vXNLzng3kzsgoWih/QAbBC15rlNR8a4zebzgMB9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715379743; c=relaxed/simple;
	bh=zA3bKa/Gs2dTmzy5PvkWZA12LJkfBCuLmSf66aayl2c=;
	h=To:Subject:From:Message-Id:Date; b=Wco2sMc7J26zG0lwuZ7Kwr9xPZth/OutCQk4wAjpgXOgok9Fkgb7n2Y5w8haXSX9V47aiKCOMCWW2cKVfmr411tMetsLMwS5IKjlnyY+E0lftcZP1g+s/C9SsT1slAfgy9rMPh9qhSiIq/ua8fR0v+19HpjNUYFega3zSCriIvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rum3H2l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rum3H2l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80D3C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715379742;
	bh=zA3bKa/Gs2dTmzy5PvkWZA12LJkfBCuLmSf66aayl2c=;
	h=To:Subject:From:Date:From;
	b=Rum3H2l2Jq6N1qpMNmYA8clKccAaIn+S7mrHotCD5mPo8Z5rxiLMJM+uCupUi1yvF
	 bbvsXGDPyORoWHKObDuUkIBwLX2/JIoBaZYIwdUB/xf/PPT5EW0f0PxDVEHNJdI+vJ
	 01MwB1Dene4qcxoIhAjUejk2YXRAeA9fOsJnD8jW1eTFv6Is6+H972pymUbZ004mW4
	 +opvzQ/S2LoMK1ZuzrLa0r03JW0ae66AXc2CimBVUImJ9N8Qmjuc3KkmcxwHkY7omy
	 pL4hqIzkA8a/YdRCdL1kY5m22B5XOSL68OZoZQEtH8j4o0UmrfEIlBgNXRVTBqpEhR
	 03oY+Weib/0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0CE6C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537974278.18344.9168077103049989392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013c897196ec4a391787fd6c49cca0141794276f41230e69b883771f1654a57e
Date: Fri, 10 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715379742
