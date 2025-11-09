Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5AEBA34
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762675794; cv=none; b=nb4jRhOz+osynhsQ7rWKVlMoHY0ZQTFBDaANEjZ97II9bvo6bveJSnO4QmMoIw3BOKvrwlR64VZjX7lo8gc+kGD9THDcs81jzu/Noxp2iovG0Qkn0YLGNwALl62sjcSRWPtkejs+LB7evpVSjBkLSahNGjpsOAa/G/Ynz1UEe3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762675794; c=relaxed/simple;
	bh=EqlJvNIDEi9Kbfoy3dwHUMswbLCbke+IUFtwFJtbVs0=;
	h=To:Subject:From:Message-Id:Date; b=b05FcjD67MDGZMsPIky5/3T0UtLKFpVfPYIThhv7k4MSW8GmB2sZblHzIy7TPB7H5+sMlEAUauiekqP4lNusqvKL43Mv6zGkFL43RoPktfMl+qI2FdzH1vuDxcga/vUgqbnfOiCafScH3Rq/o7edZOK/w6wDIRYqYhAuQQ6nOOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyV7tIpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyV7tIpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A141FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762675793;
	bh=EqlJvNIDEi9Kbfoy3dwHUMswbLCbke+IUFtwFJtbVs0=;
	h=To:Subject:From:Date:From;
	b=FyV7tIpNctpxEbp6MOiJFxBi7HGa3o8OOp1+T40DrlItGKVMaoumV9zCBSjGMPa6k
	 NYga9EJGBDzByhtEbPhU1wKdNMIqMg2iqSpW81NtLuBEhqHzDqHt5g1kl9MFc1tgXp
	 ISb5aRClyIzeuPy+qLvGgowSjL+YFbnDNJlLPgFSmkGy1sjag9SR5Tvpq0pKnP5UGR
	 DFR4wzOgCLmsa/thXG0hxQ+KxnVGQv+PeJd+cZvvl4p6mthnzu5Zxvw3Pnj51pUiBy
	 6BhHW5KTEIGwJzCIOfo5KOAhs8TZ7VKr1R7aThmGkgZxWQlKAavPPmWe7K2jyW46Wx
	 ZdS3v4RZqJE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210ECCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267579357.19362.2608776653146392605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d25a0cab0945eb847bc8e38b589e680da7b83f2685eaf8fe6983be215d8bce
Date: Sun, 09 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762675793
