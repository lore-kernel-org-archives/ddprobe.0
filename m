Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CCF22370A
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746174596; cv=none; b=fq94UozAoVhV4g0rGfEJna4T5LnppfWYvexfx2jQ+9yVJFZsEMyToElIbI0m9SzwFGfhIaJJdsmVFAk6RH2ntElK8l25/0oWjj1Pgi/uLkW6aydW0zm5H3CbeI3NF/ZHb0Pxllx4MWBHfS2Avzty7c+9/qhiHrPjHr+oKLYNWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746174596; c=relaxed/simple;
	bh=sWM3KtNEmvbIsTXpNWUY+Sbaa3eGCCjJcr2CrI8UV90=;
	h=To:Subject:From:Message-Id:Date; b=kCiIZ6z9+/DdLWd6PuYJeVNXEDzmw/VPb/K9BYj2Se2UXrB0Etob0nyY0ICPhWfjCP+cRmNLi1vUlAS/noVC1xzfgKjKO8ZE56xqVM5Dnx6VrGL0luMZT7IBBI0BVfJx+8LJYc+Ecbl471PL8ZzQRr1PJ00PTtChfECkxzqJbbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIXVsbsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIXVsbsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5112C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746174593;
	bh=sWM3KtNEmvbIsTXpNWUY+Sbaa3eGCCjJcr2CrI8UV90=;
	h=To:Subject:From:Date:From;
	b=QIXVsbsHuW6HTjKKasMWxCeOVNarzcx7VuN7NPZpf0NgK66IZXBeZvylb2/Xx2IhE
	 OM0ASNj+3HFbMBaX2sD3BWKxvIF5vuGe15ASKZo2bEDiVp+Vx020BEyzL2hCFvSU2y
	 UIO1Y2Maka8ja9SDdawaD65D6z6PY3b0Nk2xE+s/B2eCjRlfUCZqHwajQnEcxcVoFE
	 gJpWXAX3alPBLcxQh8/81nystMSDTk8sOcP845vQvIu5WtGq0Ww0aS/JnEA3uI3CtU
	 wftkDHOYe7x794Y9a75zR4r5OH8x+M44C+hTnzWd1Z9OtmP3hDrDaEPi66EgiWdJpz
	 d09EloZSVwh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92065C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617459359.1355.7206566731741838576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f988fc82ab9801ae9e0e242ffeea9e845acb02298223d0411f54393ee0995edc
Date: Fri, 02 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746174593
