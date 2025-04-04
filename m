Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36275145B25
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743794394; cv=none; b=SlmuEIe8/r1XiI6UQkMZwM4wyVm2kfqI9YYj12Qhxu/Nf62cP+UDl1Ro/Xz/Rc6KQdYJXziHPe1XnqKkGIYmlb7ZgsjjPaTnU3e3BNE/I6oWMgbBGiQAKDPu39S10YtHp0e+jf3Lkdu2oNfrgxRx6t2tU0Oc6s1gUoYLBPB9zdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743794394; c=relaxed/simple;
	bh=Oq1948fQytupdBF/M0GlNumPgG+F1zkFVPs8qAYHI5Y=;
	h=To:Subject:From:Message-Id:Date; b=ZuYJBeUs6gaioCihakASmFo9DU8VAKlK5wkxhdeEYc5LrTktCuWFxM+hg18Cd0Hkasb5hDdCQ11aTD3l3XLwyBQ8+K0ey2pHKMUi08szx90wFhN9rGNq1B3KNCHMLZa/L3itDhDZSQ7WMM5OELaaHbs9R7K8kcC/AJ+ODIr0LUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLFrudiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLFrudiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07DDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743794393;
	bh=Oq1948fQytupdBF/M0GlNumPgG+F1zkFVPs8qAYHI5Y=;
	h=To:Subject:From:Date:From;
	b=WLFrudiLUvrAFo0iE+DKAsaB6ijThlGNTiwP52sXi/gr1SZmm/Mpz5QuBYVIE1eAR
	 Zo9wpyEBve9pl0lpeYR/gtBjews10Dt4XABAZnGHwryYB3VE5jJPgHLSpUsbNFqGt6
	 wALHsz6LOMe5YfR5lK13tSWO+trQz1lG/yKAg6uF3wCFufJWhBjh62+zDUHVyUwBBc
	 JmfcaLJKP7sVUjFFMm8MVurWIyl4oqJ6J3+N3KjQUlDVtfZPxZMLZgo3AtIYq7HEi5
	 +LjKfWXsA15XIPKadqafhpeEow9CNUUyy4mkfeNJTHrdVNWME1LLIvqIwHl1bkLOAX
	 hy0DW7oQysTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B62C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379439361.10564.9463343739068562573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c986a1056631983d209049d4256a23c5fee7a6405fed21994e21814ffae7156
Date: Fri, 04 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743794393
