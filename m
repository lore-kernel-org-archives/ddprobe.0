Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A1290F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748666394; cv=none; b=aPMVkfn+MrCggWUKMGeG+Hf1CjD0b25HjwwDPVBG3MyTCq/BGh8Gb5K/EzPCQr+gMKJp2W3WrGaXfi2QxBuFoLdMmBmPCWdYUpA2notjpUCJc1ZhOnsJMwc8g1Fbt0XhuPhdrhO0xxuqKUdLxVa4c+WKHLUfsiIGnMatSc/+G3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748666394; c=relaxed/simple;
	bh=xr9bPh3ogIalc9IdQJ7ry9qED5GRlowmItrKAqLbIJc=;
	h=To:Subject:From:Message-Id:Date; b=Ng1tbqYA0LW1i19X/3gTBkYEFtd5CPBN7858hcyxO8mhndec+osv2WnFSdu+5Af8fPdAwGQJUwJVbrWqau1jzi0L+IWun+pKY/w5MNaU/GT0WlU+/eIL5Vm/DyrxB3czCx9y0geJCTCkd/z8J/jyvIxNOV3sY233GbTSc71icvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD4G5vZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD4G5vZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC59BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748666393;
	bh=xr9bPh3ogIalc9IdQJ7ry9qED5GRlowmItrKAqLbIJc=;
	h=To:Subject:From:Date:From;
	b=WD4G5vZJTDyoEb5zm2jpLM7dXf0vSQJVhYHWxCpRQ7FLbgqIiqTbRTcu1rJurT2t/
	 NYYAdzFlHgxC4eQlhhoYWNVjA6+90i27anOLelcxWg4TUkUXmkIFIOBiQ0Srss9OQy
	 Q3oL6+oTOCpPm6ga40U+vu91MB77qXqGl1/XDWjGSroP+N+XK5xAu0KzoIbtfmoeEt
	 u7ji1WRDFTnh0+g54QW7zf5keRc3SJ+ywMppXfo9CN+8hGiTGeQKCO7FRwM04Td51g
	 bHyuxhGQp/9dMNL9qBJ89YtFNYQsiz7c81DNqUrsKrnhoU7umkvwz4pbTGnUR7+I4Y
	 fXejD9b98WbXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CFC5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866639359.27793.12434426708500457763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e028b4d03f49f20ab6d9b387c172b0ed5fde38e12df9ef05d1cfd070fa80d13f
Date: Sat, 31 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748666393
