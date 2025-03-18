Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321B01531E1
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742326794; cv=none; b=jguTRYiPHFnW37MZ/U4roG1txkJgxQ7qNYwZkaNQwqEJjbFmCSYoVecZ9Yzeg78VMRQkhX95AKaIwRNTlPBWpuWcf9Ap7Zyhf4/s/LSRSDGtSIEmbrZUXhDHcaxhINH2tWzvSPUW3+pt7u71AMOyTrDEPm7x5RZw6YvHrzoNNrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742326794; c=relaxed/simple;
	bh=g8+r5oaVCTpa9HQa/Slk8/AI2P+GCQX4FfG3QyzNGOE=;
	h=To:Subject:From:Message-Id:Date; b=hEfOBukfzWALOlLSzjDLFE02u/31qFzjZ1n2Y0P3rXY6tsFHDc2lLiTHSccSweVqv4VA/1I8fJ2QT45A2MAFAk7FlMBj15su6h4WIl8cUyH4ANvsFOhdtq3eBdfCmD9G6cuOfeXNkQSEERirs8dJHnmv1EXwIeJw0SvCCkdGBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX7RI6ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX7RI6ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE653C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742326793;
	bh=g8+r5oaVCTpa9HQa/Slk8/AI2P+GCQX4FfG3QyzNGOE=;
	h=To:Subject:From:Date:From;
	b=JX7RI6ZWlVQOd4ubHmOf9BY4GKEP+5NZLzgNEptsXmJR7fqGCo71ve76if7yqINbm
	 Uqh/7ryZCYEzKQwNNvYWapnhXoztpoFjE5DVSVJCi7fBUj51YAmLw64K56gK0TrcAu
	 K6r8ixctJa1DxGhekVp+35CCDRS6iyR9lMhR4eVxkpiNz97V/KhIVu+f9ubQOv1OF6
	 5oca0SE1xHYq2ENEENwPOgegwUyknMIAHLKN4OOCiY+DlNXb2vCFle31kHjj1sR+Kc
	 4gkqu3hNeQf8jPgPPzMSIL79Qq4l1ZmLHE9gt7MWgtUFeKdxnY1EgXUNTgXz1gkLqK
	 qUgT6sfx1fN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F89C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232679358.28850.10302985775486031763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7abc4d472bcb5431ad375b25e36eba6ba56722994156f46ebcaa55ccfc70d8b
Date: Tue, 18 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742326793
