Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB88D6126
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSGP4bV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79961C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702444096;
	bh=tDnXBzvI9qYV3IdweXGbH93R95NledQZWw1RJlK8WpQ=;
	h=To:Subject:From:Date:From;
	b=lSGP4bV+cqfvkYwMsQIUUIx6bawRSQmKZKKRMZAetkYR1DlGmEuRgN//56/F3nxuO
	 KocgbVukupcFKpdT/mYHgO8C0l+Ny2pVjIrUGdoGe778Rvk+al5S6SCDQXfSmsTQ1Z
	 v0rTj2cplLA/S6w3z4+bQs+aULoE1BTq4+9RpBozqCqOilXpeyWn+XoV/fdC79IUKM
	 T1NawWkgCEWbl+60jT7nenmV4cAAXtki50IZxIHST0ETV88aSs9lfrBtHgHHChYvJ4
	 nOMeAHNGgaa3F+28ionpxIw6PJ/aZdf0KrtVZfdTCViEuDT7JVW/fJNQ7l3kO7jzqv
	 NPWYK6ocWjn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE66C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170244409638.12562.1267331881545573295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6d5be969030abb4963dd69a3c0aa0a7d06d5bfafb2d0e0c6a6b143415aae42
Date: Wed, 13 Dec 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702444096
