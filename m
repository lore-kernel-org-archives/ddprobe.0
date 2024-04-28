Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEEF1EB2C
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714317743; cv=none; b=YG8uJ4Qx/6SloIa8G9avDA8Ri7GTnOvW2Wp9RsJHhiB7vqzcBGgwYQQ4x34VImyEJqS8tMPqw2hnKiNZoWIZBLpRWfDRB4/ii5zlGgkYG2ue+gyYJ3GSPP/YUEu/AFL9D+qzn/0ZBHwtf02qsl3vtHGvQE522eYZpSygbKlMfdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714317743; c=relaxed/simple;
	bh=JK8Zki9mwLiAvCiWZQ8Sc2PxF4hu8Z3kvrvpNOH7up0=;
	h=To:Subject:From:Message-Id:Date; b=uI5SMovgaGLOIrTXJ3CdDYYF8XL2tJ/3LDJf9o8Xk2nfM8ss8CAhp+gDDXvPX5MFCz2xKOcHNFFh+WpxTCHHFrgrjcewGGGQtV9xVZN2DgBP0CFy5V2bD3udthw+7mWf86vDs6i0PRbqVaa/wT0hTqV+s0bmSPxluk4d68jVOqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIhI4zNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIhI4zNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CEDC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714317742;
	bh=JK8Zki9mwLiAvCiWZQ8Sc2PxF4hu8Z3kvrvpNOH7up0=;
	h=To:Subject:From:Date:From;
	b=AIhI4zNkP5rIW/jh2OHXKP5EZzE/3vgrIZqfO3jMBISVo9zGStvvo4XyfJHJlJXp7
	 usTWcI9MbfZL3uxbw1DbVExWwflXJSX9IILbXjjUZYK0Ax5mXbk6hPnDRHOeiIEWr6
	 ippV2BB6LIIrumByPQG4QCzpqgX5zbI8ixtPzadVwbczcX2THjB3FuT1T91KjGcZHr
	 qwXSRomgDb5ebt1Mi0SY/AYDw4Cc/iLVxXSzM4ZpNmlPVhwM6Q9e6pdr8uM5yvU/Bc
	 Q9oPCheJhkInaT48nvIBvjLQyfIS1i2egsKMssugznTbRFH46yDywUhju9+ea/J+8f
	 5OVBGCvkF68pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ADAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431774276.16461.643316698929590924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e127e55f4116e051202d16940e542e9e036f03f304434c9a9a2d95dede1cd655
Date: Sun, 28 Apr 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714317742
