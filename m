Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C72481B7
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735144554; cv=none; b=aInnFjOo/r64qXQkMz7eg6jFy0XJPYR7wWBqPj+6a4gcmCZjAZ7TeI7tNFX5X4mGjDJjphG4nqW5iMHuntS7CPloLc5qQnN+DUuZDRWsIodqOUTgWrMv5yvxTrQRZmsBJrOw6Z1K/Nl4S1GtovTisL5sVYAMgToLYBRfPD3Dzts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735144554; c=relaxed/simple;
	bh=necTCjv6SILaWU0pu/4Dj24NuZE2Bp5Qaf1XEfo+ZIg=;
	h=To:Subject:From:Message-Id:Date; b=qPNIl5eU7JJ/p2VfnuslGmf7INynOWtlOAaaYnW9WEKbQ51LIjQJZyJAQiUDq0w3SPBelbRjqUXQTBXpn7w5p3GxfLTj5R+XyABXNzogYGwEAo7d6tf/i0Lo5wTG4lzBJlNC6U0xAsqBq0uaD2eEEhIUrjzSkpcXGOI4C0Gku2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKTecF1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKTecF1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A483AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735144553;
	bh=necTCjv6SILaWU0pu/4Dj24NuZE2Bp5Qaf1XEfo+ZIg=;
	h=To:Subject:From:Date:From;
	b=IKTecF1foVHfstWeAOQ7qhxxA2A+fVCQulv8o7W5ooNhq0fHuknO854p6bn6E+cfd
	 K1rTCCvX11yocszsQ9tnITtuGRNZr/j4QXbp9cQFwqgyTQHq3JeFlbeDiMK9WAyd16
	 O57a6MVDWmiadoX4eEbkHe5jBWD575jey/F+/Njm+K0h89R56RLy9mBVHocrMc8CoF
	 u8u9odMJbmbAFhTGMT5qDfxHKMKneEGQSrrBQoB8HsmeeLcWugUj2AvlbhR091LNmf
	 yzeoFYD7fKR1PLJJ8KyxVRHaka8M4uU+goNXMJic1B1Y+IUL8nrg0GJO3JdYnkj23k
	 dbtn3A8+LmrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6AE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514455358.11315.10710610173005393584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c544030bcebca0402621273d349a975c28746af8e250bc66f42cc4e561c5ecd
Date: Wed, 25 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735144553
