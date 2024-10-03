Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1E1AB500
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727989554; cv=none; b=GWr0kwj4hvhVvn6qZhdeBZZt4iN09MGA+Olb3fKVSG9wuv1Hx7WtSHLBoFxuuX/8vFJc4iWmPbcm4w39OLk4tOYdFeYqXIkgoLOnF0jV9MFf2Xiq91Lml4UoEkC5MVAh5k+P3rgEs1Ja3I6Hcugkh1Yv73E4BFO6jVBGFD6UL6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727989554; c=relaxed/simple;
	bh=bxDfisgkYSLKsCCiCpLilEsWcRA78gqYufjRD0FLFFw=;
	h=To:Subject:From:Message-Id:Date; b=DyuWXGJ+RFF4cOXj6cIVBOMZK3TmqXte+T/9YcMKfxXAVDzapg5Fl0Oa4cIJyQagB+DWu2COd7vz8FVbrnRB+eoKXUIKAK0DqLLgnd0K0ObzLwnIIotB9Wkz4+RcTZEpSX2NH9IQl2vE483qLQAHWqPCKd3K06VkXVysqTVup/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZsBMjSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZsBMjSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8790C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727989553;
	bh=bxDfisgkYSLKsCCiCpLilEsWcRA78gqYufjRD0FLFFw=;
	h=To:Subject:From:Date:From;
	b=dZsBMjSRNUSAzU2Jy5CMRh6hgSCsNOMCfspsgpoo4OuRmQ1gNdLLVlGwgnT7RtO8/
	 k1aNgKtza4WqDp5Gj3p+MxB4PYvpcgf/9HsjSUeS8KDteAUj7JMLDE4wGwnUmOy2C1
	 HP2FF+bUkYIUIaeE0EuXFEHrPO+W4+gET7fxM9kEX/G7bItCzR+5vd/mE55mflPWgj
	 c8DOawjx4Sh5vBATxMNHUgk9Nd7O7Ye1jRBJLh/AVtalBCKwFYwtfmlc6V208qtW1z
	 kN4XR0oYC9L35ldE5mzZe/pxBOumkzVyKVS31UkVc92JYJJP0EYuC2Q2SHyobsA6VN
	 pNPp5WrtRDgnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A192FCF34C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798955364.25133.555571476167964153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55f2a5f85bb43392924e70702143347ea92e2a64404714c570bd40f83fd45e9
Date: Thu, 03 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727989553
