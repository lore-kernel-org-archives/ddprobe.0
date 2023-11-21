Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC631DA36
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuNi+b8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3C9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700549296;
	bh=4ddMVR/QHF+0UipFaLB28rDJVkbIsL6SdXdACx57KUc=;
	h=To:Subject:From:Date:From;
	b=HuNi+b8/yEea0jH7q2NozS6xZ6aJGcjLApDdUly/qVzKO0lywYMYzTL+K8WIpdxmw
	 hby5z2ldZWAHg6lAQqHz5evzIu0aYF8WmeQaXLE3L45vcet9fFC56jsKVkGrQCUxQC
	 tENZQYPaVvUhruJaOgT/2mmwjNDyZ5W4FupLgWkP6GTbPxBIkPhowiEObnrn6+oFWY
	 rSgZI9PDoXFl2S5CaNEx7XLeGpHqGnBsKVA5DRv6rBdQzk+/ezhsm4TcLkMgpIVmz6
	 wLvwjtljxjOv/6WCZ66epqA+WKRVchM+gX5yn5jBCiZi22z28tui5OiEoCiHd97v46
	 oGhjDkJyccLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B37DC54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170054929643.12809.5420894532021112717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2bd1661ec0f6cc36611bea2c0f2776756ecec0fc245325c23fe9c5cbc10b42
Date: Tue, 21 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700549296
