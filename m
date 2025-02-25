Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBD3156677
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740457734; cv=none; b=sF1cdj1vTkb520RdLkUSw9tZZ6H5zTdSf+7sIAhVr3pnsogtoJqpijbFDDzY+Nr8BFId5Km/tPzN8e71H5nR05q04KIn271MKWTdJFrPUAooQwmwpjED3+EFFTZE8sziTm8gQqlYGELyOWpv3kShXMChhF/qR4jwNYffiFljnCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740457734; c=relaxed/simple;
	bh=Dot/uBc/VaWuaDcIKTeAi8NB4IjTCSGZbwUBZhWhCTI=;
	h=To:Subject:From:Message-Id:Date; b=hn0peVK40tPJ3vC3xMGTds7GzQPlyzLnaDwPFHo8HjFovs9sxRkjRMDPkHkYvzEAe2va7Z1NTZmKOBmIqElIugtDCaQOdVRstk8FEaiWfr4mKzIjbzCC+NjGx1NzvxKsw3eyZG81EzdA7x7iGLYEMpqc0cPnxLme4eOSxG39Grc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qW1r5Gub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW1r5Gub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA73C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740457733;
	bh=Dot/uBc/VaWuaDcIKTeAi8NB4IjTCSGZbwUBZhWhCTI=;
	h=To:Subject:From:Date:From;
	b=qW1r5GubO4r8zRIyKlA48CVoPHdHDIWh97FQsn9Jr/FYA78QS2QOGTg8SHGvlZoG0
	 NMVu2bLgDFZ4yfpg0O+gkh4O80QC9iHQ2o3VyGJhqlui3nsOc2/3HTsM1gd0T15MeT
	 YfDUBXitYfXGfUU2JHaffNTHNaEZF5n/lgTpcMeW6DmwhSfsV6VXpUlve3mNtBGiiq
	 3d3K1vrJs8iwAmWd+cZBXhwShb62h/vmMGQd+aLQkSvgFbtYhXVaeohAF2yKJprVzd
	 BRve5Q+t3DUWJeFK15aeK/GzeX6n0g48nwC0RqmTVjXfokqCWbdxfiUMDiy+iBVvvO
	 NZ1+tgPe41m8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D2C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174045773362.7659.4568974000707284888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5832a1427ebeab504e123b1dcac419796ab5119f812ff72862020bec6186c59
Date: Tue, 25 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740457733
