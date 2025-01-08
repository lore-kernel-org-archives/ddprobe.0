Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B3D2594BE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736361354; cv=none; b=O/SKvBdn7TC3DfNlgqDC7hU+1wLLLCiOu+lxsKAEQRpxhT0dy3uYs+GXe+C5Ednip6zMsesnA/qr6VFQnYJWG/KnO3EHF4OWD12jlWsQ2XOJpk5UDLdt/y1r99BuVXtM3OWuM7qXlp4zUNdCkQHm/hG3ntKzGJ3wSoGblW+IwAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736361354; c=relaxed/simple;
	bh=yQatisyPQd+DWdQwdEl43FrpePaFTwj6F474+4cUFIE=;
	h=To:Subject:From:Message-Id:Date; b=Fbw9Ei1ZHTP6wWhwz39jXuCs9sZwi9v94Pgi/T2RdviM3HttmzdQ3GzveefCgt/keh1G5ECe9tXZECY/L+mqWi3GsnhJsO9m1ZksaHh5NNBWW+gA//4MY/VtMli4PfSpcpk40sg0xJ/yiPud43LqG87HNFfRM8jPJS7kGegOm1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwzZU+Mk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwzZU+Mk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16E93C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736361354;
	bh=yQatisyPQd+DWdQwdEl43FrpePaFTwj6F474+4cUFIE=;
	h=To:Subject:From:Date:From;
	b=WwzZU+Mke0U3f+im2HqiGBGGzxYZI3O3/BLzQhCOXMHCCjz/AhipqBjqoIMSNsnO8
	 OxTYQmMFk27TTwyjXA/Nw2iJhdajJcw4Fwe8vjzchMqfm4dof3hpzvuuAEwPNqCFce
	 MQbDLx0tIrkocgBaladgUxBBCKSf8YY3jyn+9FPS/clKVf5iP6pn5wb4h4AXHOsL06
	 zcKYM3FIIaXn81AKyJHiz1apcsQwWVomQvEz1j3xlsfkCZ58gqcuWGcSam/oGCWR5q
	 jFhWVzijWmiOWlGvu4plO7JPw9/do7rxoTQdkKXN8c8vIEQs1O4w2g/8r29uAcPb3A
	 U/v9XFHiaIEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF274C02183
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636135381.32297.18442565965561809041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197d7129e15fbdaf2526e939781c97e9a07a63164900842dbf9bebac13a86c9b
Date: Wed, 08 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736361353
