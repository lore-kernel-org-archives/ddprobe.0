Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7EB199235
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742318394; cv=none; b=AYV6G0gIZz6yQ8ACOkV/WpbFhTzrHBxNxjl2pUiw6MATPXaeOeYjD20OXGL37vssYIKoTR189cqGqjbKWY6wO+5qx4QHfFYqr+ko43ck974G/kRyurq6OP4W0s8q3iRx5fuVwoGjU7nzbl3KsZjHSu+FegvC3bQDhAijpTUhV0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742318394; c=relaxed/simple;
	bh=vF+/UdpgMSUGI3mDhw4b67ygYxIfzjO1vwNsHsttlJk=;
	h=To:Subject:From:Message-Id:Date; b=WxmHm2ZF1dg4EUWdErCS/rr3PBEPIsW9lNrJj5OFUereJHUV2qCayGB31nxPOk8n62Cjkg5eBDjgWeq6mBgsozrIKqJqURulGe/2UuOON3VtktxOeJbx0DTtbNbKP1zECYfo1T05cGaCGlBYLPHPXcaF/yvzaHLGt0EcLH7ROwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYDMuyx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYDMuyx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742318393;
	bh=vF+/UdpgMSUGI3mDhw4b67ygYxIfzjO1vwNsHsttlJk=;
	h=To:Subject:From:Date:From;
	b=oYDMuyx+RbPuJXanX6A4E/kNH482/OcjPmfHSXQdcgiNdYc+RPFgrDo907DaT2PpP
	 0K39+k/ZVoR2OfVl6D3CgKj5BHrfcjVMl0pDn6qsHYq8jfffMXDCWutv7u9artFLWf
	 RyymArh7P+CMJj1j6Xp0yzVRiK8CNcZH9+wmJBOWLyRRyRnUFZD0RgEjsacQAbWL0r
	 ofQ/gevpbHQWcEldKSalZw451DMfkv1Fcwu7d+NlNvA63SWU5F9W0w71KdElsAmPBl
	 tgG4dUY0NLLhEY40hsARIPFse8qsXLUV/5WQCHtPHQPsw5lepGz+OGWcKZ1UyKlabc
	 O8IStHH+NYtfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CDC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231839358.26664.17825698964912814098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a494fdabd2ad430334b7519078f9559717998388d345578e02d519442e089c2
Date: Tue, 18 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742318393
