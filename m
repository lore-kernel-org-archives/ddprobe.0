Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7525112B83
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719091943; cv=none; b=nMT45yn5odr1j9yAm2l6/MNC+j/ua2KR44Boh0soBQYVrnSn++xSnrsnJdIBhCcUoCQC6lRlVdbg6okDmgCPvv8xV5vUYoJFLf33rpfO4jB0BOy/BkvJe0LBjX+XFG4OUsuNp/lunTOECCHJxcOvAdk14wqXNnMr5lWAi4nektQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719091943; c=relaxed/simple;
	bh=1bFsp9QIEKvTCuF/OKMaYO8jzSDXSq0uyVShI3S2Giw=;
	h=To:Subject:From:Message-Id:Date; b=Ns2LYz1/ycjKOesxOkJNJwRaXPy+zMxE6oKGhFhnhJXhyF6PTBYsijRVAUKFmH1LaX7hORBgwGFaaZnCT4mzK62cJjMxOXJcCM+PewrpcumoCstsE/xbkUXYtG4XS4HGVquVIGPpb+REkfzJ81UuVhedLeQGTcoMHvCUe42YZ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvfL0CXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvfL0CXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18F0C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719091942;
	bh=1bFsp9QIEKvTCuF/OKMaYO8jzSDXSq0uyVShI3S2Giw=;
	h=To:Subject:From:Date:From;
	b=HvfL0CXKwMzzgwlL+WMCN/SSZAU21iaH5LWGFv7QYH9o08Xo7cAFjDwklfqdqGjQ6
	 jBtJGaywSDiRKMcl7owZAVJ3uYhID/Lqp7gQ4cBEJX/4Z0CetPI/6t2dIZ62Zug/PT
	 8SdBnO4MHpaBEhd7Yk7qPIt/ALKaUQrQVm4ksF+sBzqgX4xypao/aD00LPvxwAfWiM
	 WbZ0nWb6/kB2LN/jpDEeDWScnFEv/VUNb9G6FHDBhyByg70sqKUj4Ixq6m2AK4PceU
	 B/EQgXYyl9K9G6A1OYtWMBmiIE/c6nb9YObed2wka5BWtGKrOksM6JH2hPL5U1AVMg
	 SHLHd1BOS9+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8176C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909194276.6087.9705592815122669164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae887e5528ee779c7611177d6261f90ef96ad72877f3ecfa85fb0a07737d3bb
Date: Sat, 22 Jun 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719091942
