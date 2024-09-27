Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C16B27733
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727472954; cv=none; b=hTEG+0JOpQ1aQNmMeHn2BrEcs5Cu+tMTuyv8DhiF8VgYfBtj6Y8CV4x/MjcQsdTDFe7kJXh0MOwMKXuLgZGOobSyML/pCOUoUGFXgY8/1E4+pMNyRS7EjQ0jyHnYnF4BWEI3/mivrbjWBc/ZGfk7apkXGr1V5lvbVW5CvkM7uUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727472954; c=relaxed/simple;
	bh=TiZ5OcnSv5opIF8p2Z+xeY0U42x9ulmLotKDgAMubvg=;
	h=To:Subject:From:Message-Id:Date; b=feRp5lxSjZBXVCtZiCTjnYti4T1uFWiEI/aeWioCkz8epE9D+NrfGPCzYUV4YYxZ4C+8amuTeIB2kKathjuSRO+w3Uk9F4KglXm5UKRYpONJIZAvXTyvCrhFcjj9YkAzBAzKDNx47hZyBRXzio4L5uMClz1U9NwrmLeRMND54S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6MU1e9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6MU1e9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93FCC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727472953;
	bh=TiZ5OcnSv5opIF8p2Z+xeY0U42x9ulmLotKDgAMubvg=;
	h=To:Subject:From:Date:From;
	b=V6MU1e9WIzq/yzLrp5CxICEv+Ww1y9qUSlr8xUXoCRJEul14URr0mIHjSZV7u2KYJ
	 Ctt1BUKJp/aaHk9hgRWcr2K/S4XA001zGhjh9OTzLvCAHgrPun/3s68JI+9lv7gmxQ
	 CYf8vqv4MHvU2THpHAvItaUsN0tv5rG+SkJTZgbWC7/+a9+gppIatNS5/b6DeS3+FE
	 lqltzQ0iI64Cz2VA03i/vDoKPpG7F6DmhICv+wt3lU3qd1ZK8ehsR3kmY5liMCjcGM
	 j8x4Ofg8TuaQtMnnODblTFTCu2xUelnNgEk1CaJW2uC/d+pXd9PSON5i1kyYvspNkV
	 mdx/Lvz+bRLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A9CF6482
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747295359.14453.9150803989614275776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73c238a2527793820384b89931296475b0d3acf3541747699d7c881c6bae452
Date: Fri, 27 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727472953
