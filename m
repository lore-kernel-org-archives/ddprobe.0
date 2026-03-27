Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386E29BDAD
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774616094; cv=none; b=RNOw+zTkOlLA4+9mw84EgqVt26+IGoa5dSLdxEDMZZgPO0a9DXKsGdL52WUo8Gogz3wghpNydfb0qNCqnZE4QxfH2Tn/ZbCwDxBMI2iK5x9N5Qt/EYJeYoDbZS+y62JGs3v9I7vG30B6glACFv5lY06bOFA/pVSzcJws1ddFspU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774616094; c=relaxed/simple;
	bh=2VqnYgk3+hl5OZ4A4z2DCKRp7B/Rr7287iO56woI71U=;
	h=To:Subject:From:Message-Id:Date; b=iH/eeFLKAr5tIl/gQk1FKi+WsFMi8ZhsyNmXBb6IgQIIGMXHx6VUxz/nASfzkUB2sHkNYKnJCVnScrTlhgirZAhSycktiXWMwhOd7E9w2qifjYgj1vBI8rRgOX1L0wqJVqdBKq4gGQ7QxcaEcMVgqqSnxGLKQrR5KAGisCoPzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0XvSX7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0XvSX7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B2C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774616093;
	bh=2VqnYgk3+hl5OZ4A4z2DCKRp7B/Rr7287iO56woI71U=;
	h=To:Subject:From:Date:From;
	b=a0XvSX7M3IYQ/ePOd+Y7lsOm438krCZrI76cjDA6y+Vne7qP2iLuPA5gI0JJEMz/o
	 Jlpx5pfZ4e6Za5zdq2n/NL9g1J8D9A4EehfCSNuwcm7Y6omJ4amAFXECgK/IHK5jGu
	 GKc4hRL3aKOAYCr8gxkcHkHzklGqcIU7NK0ldE+Eu9AZVMyUooWNm9npwsex/AZMcu
	 pKhrlYemT0k/xI8jmywPTONg46vUXCBowfmkvC8G7Fx72eXtsL+O+bkhfpQ7OireV9
	 2pLTKaiitZoRcmT+njsoI6UWaH5imrLlhmT4TsfO3z3ASS/ISwtzaXyCE0iYebtbGd
	 N4uP0JRw3baHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7510ED66E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461609359.11562.10507309084632169736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44dea9d64e154cca1a1093d048c3e3d9df3414b5f91a07291d85a7ec4e4b8b12
Date: Fri, 27 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774616093
