Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475A434E75A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784025514; cv=none; b=uSuaraKxu7IfCeSLD+8mF4/rpBa9QH3hMH//XLfCyEzPjxPUgeNZMFraTugB9k4wkZnYl4agxH4UL3YFNaUnyRCbrVanP8VrLR6Ci8tg0WXnp62AkyXwAbbXmnkp0zv46YMIOJPubTQbZXuIZVwFdy6QWbx83h3gqXdDNetYo2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784025514; c=relaxed/simple;
	bh=AB4FFcVU1+KV0h4T0x7DUD7hZH0f3O0mve+YlPRmmy8=;
	h=To:Subject:From:Message-Id:Date; b=ZVZVdK5m7kRXB3AAEv9b50q4CxJfxYxmJEDViRKPTxTj1GwZhVmENEwBK7tXmGh7dU/hep14kGmrCrzg6eoAdGS9An2byDVOaAWXKRBmSLmlbnfJrNILj6Sg/aG42ly0owL8JrQ/yRT8jNBA/ytEKkYXFGBKuv9bJ/0Z5+11sQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwnRQSFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwnRQSFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1DDC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784025513;
	bh=AB4FFcVU1+KV0h4T0x7DUD7hZH0f3O0mve+YlPRmmy8=;
	h=To:Subject:From:Date:From;
	b=AwnRQSFaI4oef1kr694n21JTQceaNsLBHBgfjESV1wT2XrVXzFGBl2A4vvNdFZZGp
	 w1KBCBX2Cl1SO5cDnykLjC/RjdOzhMhGZGPYYeEdmDh7fnruQcrZl/YmwBGfY3q4xv
	 2nvInS57myt7qpPwKQ+DPdeS5YQfjk6Y8CwpAhFo8CLfG3eeFyZot5mEBGjuO4tSj3
	 RDwdiDvN++iqcsYPQEtGZo3EJnbAN+NB62p2PkhoDpYVKOKWt5fxd33ueQwMp5Mxzn
	 VclgvYRYn2eo/KJMmc5NiYAwXx28y1FGH5Pol6CHqRKZUj6zDqJsb/HsO3GPORTjNS
	 x8olqfF3WJJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED5C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402551368.16182.2084925420985152974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a2efe733e457d77cd6135bb72bb96af3321a52d7a0fd74c7ac87208d21b858
Date: Tue, 14 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784025513
