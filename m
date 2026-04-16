Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3528C1F16B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776308254; cv=none; b=Gb4gtn+bmGYI24vW7bzkCuR35bROCqnYa365Nk3OYler5/IcIPJeCTyNSMAwT78pjLB8iTa5R+ElNsktv3TvNk4LLKphOS/lozBMx2WmQXMdGEynQFXssQrMJ68gXQkInBtDjCI/YiLAs8Altk/E8/O20erC1bFwQI6Ow2RERb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776308254; c=relaxed/simple;
	bh=1hT7Jd4orhCG1alCIPTfYIU5L+TX1H7xT4mYJ2HIv1I=;
	h=To:Subject:From:Message-Id:Date; b=i/8DYDXWS0FNkn9GlgViYDwT8hUjF/tlggrMQJPD9xFzWI+/vbCXK+7Pr56y6a6Wz2EvAG5OMyFGglQVHDNFMP98wR7wiQfDsNpxzfmOUN0cfH+9acJaunWp9/MwZR7Gig8Ml4QzWkrW0eCkCelhWuk0Z/WEnS2pdj3n7cTPtz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0FkATiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0FkATiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4DEC19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776308253;
	bh=1hT7Jd4orhCG1alCIPTfYIU5L+TX1H7xT4mYJ2HIv1I=;
	h=To:Subject:From:Date:From;
	b=m0FkATiYfkuIcqVe6veXIfgx/A56z8jQH7kLc+uThQ3m2g/+pU3U80B4mX0r9NtDX
	 LXcU/E63SpaU/EKnVBI1PA/G9oIXiv/iBPHPWsuCk/S2ObdaQH2wgNq9i/6wuWTd9f
	 4Kz3aerB/VgaXGqEXLV78kefpZin823+gftepd1YdRsz2r1vhYOQn4JFX4Mch+b8Ep
	 MpVpbRab09js/dK5b2YKcJTYL8Ov6WB5fLNppNx8WQjcxch30vAU0jVBFi0XicGRjq
	 qaACusmc3zWJ6BZbwIZxrX5Ix1Ugam18WLBkoiideSYGIJZEHJ756VAnKwfyKNd5aE
	 OhMiEUMW54dqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA9F433DC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630825368.9447.17955510092198689574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17163dbc507643994d185b2885badc036c3614c89dbc4cef4fab77dcdcfb4cc
Date: Thu, 16 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776308253
