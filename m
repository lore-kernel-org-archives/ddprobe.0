Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC984C70
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734921354; cv=none; b=gCgZqYSO/Hl06ErbEAsQTRF7Fqr+WP2fNnYNbnGDY/uG2ddcFCltAwTjkyKkLoaALByO3YZplGK0coTcmgFGeNNGj/X9JoBXXDG6YxCfpuGfytaqSDy6V3MXuYMmMmDtZxY7+AA+hxCgIrW0N3mF/5I8yjNIRkbD8uaH7XPKKXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734921354; c=relaxed/simple;
	bh=+H54UANX1XxY8kW1iYBeOv15bjHwBtv5fEZ0qnFLYGs=;
	h=To:Subject:From:Message-Id:Date; b=QrqJJmbYOD50Iz/TMOoXYTQYTvwX4XnEibTxxr2Ced6JPM/7dwRiXf28Rdp6RX8JHDphGVUbS6Y3A4B8ARbbAuGI1awTYb6MeoQpcnRtEUm6b93+aOLWhruZZnT6JpzSBJGYRReqgsNRC3shoYTV0zKdSCu89zpjwR7PD4eVgvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIlyod2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIlyod2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99FAC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734921353;
	bh=+H54UANX1XxY8kW1iYBeOv15bjHwBtv5fEZ0qnFLYGs=;
	h=To:Subject:From:Date:From;
	b=WIlyod2/tZNupyBdMa77z4yzdpOHG6HHNoq+1EyJx07eJP1R94aPrbQ6x0pY6WRBX
	 EVuC2FimdIvRGp6hW3C7dGEONRkbA7+P7KbH+jzmF3vR9L+Q1U+OUGHObXLosMJAJ2
	 VhKGUIr9E31ImdKEEEkBv8/pzpAktgqLlgUS9mPW8aOJmXKYp8kvPj0IQwX9kDm/5F
	 ockC0xAfVd3vqESnl5iGl3+03/OM1D1JO4x3347UUNmifs/dpsHXjxKBo6rjsfCvy/
	 cG2WqNTvjHLM/jFsQ487Wyhn559Dh3BubXjpWMg53DLMYtCp56LhhdaQrjh/F6wc6S
	 yQZ9xllYRgp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCA9E77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492135360.5991.5531310574133950789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532b5a599efeca9ad7874fdca963d093e02d20140ec523c11e7318fd83a73889
Date: Mon, 23 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734921353
