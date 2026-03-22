Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249DA1A6827
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774188294; cv=none; b=ZFP06zyWog+UhKxR5G8yT4QkTAkCzdpoGoiFvdiz6zc8UpHkBTnEKzpgkDBFlXLiCWpXdpZEiufb+34DRfndCDCaCDz+3JytI6E6irpLUR3z12pRDxWAli6MdP56HfxxqRhYqjL8ACk0oGlVMNWMwCB0xKgHIKD0MfWtp2tjMz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774188294; c=relaxed/simple;
	bh=Hml8XkRU0zTD/KxiRTm+aa2VvdU0c2zu1CXepKcoOOc=;
	h=To:Subject:From:Message-Id:Date; b=hjzoZzzlMlYKVbPM3uZVLjMXeeNGlTJbr5eitb3Wnim89LiuovCXukHQocsIP/pTY17aV2PsI+AQ9OWjHdZ1pQF8rCcpCQqrsjcK6a8cYgJ4oM8o9x3Ze5F3UcujDDcPvn9fv3IcFCTV6rt/1BEtq9prHRWjaBKzfeFXofk4slE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjPny0XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjPny0XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EFCC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774188293;
	bh=Hml8XkRU0zTD/KxiRTm+aa2VvdU0c2zu1CXepKcoOOc=;
	h=To:Subject:From:Date:From;
	b=CjPny0XMJkBDe5PuqlGI6UoIzcxbedl2QMS0I7Bzl7DyP/0QeiC3RfNVTmlHqJnHQ
	 cGDrtSDPQF8A8mGVMjeHlgz/nDZajkWPJjsUqwlPKpCs5XrRK1uo6SPWvwO97gabLr
	 j0fZpepVu2NgJozwfPkyl59PNb4W4Has35XV7xqJ6f7mU5nehGODdu+/FJTVlPHtFG
	 bSnsSvdcyev4uK4FQAf1FI/p3/+hDW6u/+ivV6ZVB/wAfwPAf1fDDb1z8kuiODkuZs
	 fcadXrEnYur07fqvDJmIapNgcbo5icaV4j2aD+Cqe/HdGki78T4al/K07cYGFT+gJ9
	 twZWzv9+sKWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99917FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418829360.5057.5656092078652531187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c5cbeec15f697beff3524d3a11ade3932cef9a438c11fdd478bc0655a3f8db
Date: Sun, 22 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774188293
