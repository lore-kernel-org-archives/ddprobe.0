Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F35802
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQaR1hFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E5DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704847696;
	bh=GYi4ucQKHJJN1/2pndjAkXuVBmLGEOQEEuhGhDpodJ4=;
	h=To:Subject:From:Date:From;
	b=gQaR1hFrOZjsLTCEQ7t7qQXFD44dRPWFjYM+pwEXhyf+UrIp4d7o+z/7Bbf5f6S66
	 +XlS27a3BdBm4tmbRFaOcLSpDCIL9yanS7pDZWQVvLY2hKcaR16hYBV9fCgcaguEjH
	 yGynqolcBlVuqt+Fexkjt89O/xtMAXZv8l9KzAHYPOFiJGuzXDv1NqK9OLyAJiNL5A
	 +2wIqfDabLDsySNraQ7IJGzdIlWgLeZtva9VB/srJeWBoIj/aWFDCu5OfWdqFUv7ID
	 IaA3Xp3UZ+8QhFPwVqrP9w5SsOgyLGxcCyO/OdxCt5L4OGFxtXTFfOPDXkE/lKYgMI
	 ciaR4kWMkcfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C2FC4706C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170484769639.31142.5762585337718057917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdd5fc73d1880c2269c138fd124199477085075ba03f99a83ee78f824bcbc33
Date: Wed, 10 Jan 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704847696
