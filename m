Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF9AAD2C
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712459897; cv=none; b=hUHfYRAiHr3vFNC9ZbR5k5+ZbRVEy3OVaoyKJOV78Q7B3/eck/ZnV4ZJYgJJxRry3ui26c1/8yj0xKqJ0AoMK+Q+yNiNuM+gOkSPY84StfD0rukZp5u/XCSBo3A84oloaxUQzV4OBLUQZow4HiKJanSQ/LyW1hsAeXNwISuWsY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712459897; c=relaxed/simple;
	bh=0u70xfZOLv1K3dtnD/VjxgdUwYu6bNzjDnCV98Pz3VE=;
	h=To:Subject:From:Message-Id:Date; b=YzHSUX+UZLWn7Usz3G9g0vsfMf7OCGMikkugv5JUQBouegGAAAkmzxVXhqTJ2F29ccjNcq4arSedguctiOUtfOag23vSKzD5GGtonX/SMw4vfGiGp2xdJdBgzqqK7yt+aI+sr/Gf1V14chkwgtvT/PhyopaVApGvafRpOIVkPBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWsOXCxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWsOXCxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777BEC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712459896;
	bh=0u70xfZOLv1K3dtnD/VjxgdUwYu6bNzjDnCV98Pz3VE=;
	h=To:Subject:From:Date:From;
	b=YWsOXCxTFRrZ8dkTa9lNnuXWUVdcykf8l7M7VmsCD77CAInQS98fr7z8I0t+VVCAJ
	 TkTZBp+cAoNpIHUpgzdTCh4JuHOVKCORQKxECrYsjZEcRyjirNnq4mil8ol7TnV2Tz
	 gZpz2cUTqTLRvD2HRYfV59Z6EmlVmK+DbPnS3QX1dVOhT6SCmuxs4oNcT1rgyOI57t
	 ESveLgvCHHJllq3SpjKLAn9Am7i4qdOLXagVSUowhAPepIVe5Kl0wyqLl92b0hWEc2
	 cwJYgFb0gj8Lvb41LyVLCtjjr0TpTwIXI9jyUMFilaithzzALJQbNUGBU0se1Ojr/u
	 Fi0EN6WoLb02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F24CD1284
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245989639.6919.4765301063767344126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e123c5d9a1bf4f2160aace4611cc1ee43746f6bb07f8da7af6ce5bee894e646
Date: Sun, 07 Apr 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712459896
