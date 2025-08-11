Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14925202969
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754921994; cv=none; b=UXHfVYWCUiIaqJluR6jHNP/cuYcPbHSUUV1KENkE3WpVnp+VK2AxGvimcMbf4Ecc62xY+YL3cBu/rYFcyXM/GYYg+HrCGAU2Ac8jcPhwf69kHstJt4lq2AJW0lDGfm4UvSL4ODP5uJBvsHus1GCIZ9grvLPrwSpRZG2mWBZEtto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754921994; c=relaxed/simple;
	bh=ztaasySDFs5Qyu2ccixA3clqZlOt6y9sD0kO0FanYxU=;
	h=To:Subject:From:Message-Id:Date; b=qbYmqA82eHwm43TJT2Jhl5KZexafZX0iYVqscpqg6v5inPHb9JBOKAd7ixL1yQyIHlSMra2FNqVwr8aZMGgQWtWxJjXEzw0sh3NwbIDP2zR6FaTvKLNLZVRV3enRDRTwv4L0Qjtc5TSUPNbQQ1iQbj/GHX4g7nIzVQ7DubhZE2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMZChaeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMZChaeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754921993;
	bh=ztaasySDFs5Qyu2ccixA3clqZlOt6y9sD0kO0FanYxU=;
	h=To:Subject:From:Date:From;
	b=KMZChaeIguQDSXupMnDl+PwRNk+v2SO2CNkwUH83VJyYcbzK38FR1ji9KieWoVh44
	 CEJtiACI/w+YimOXGlr5frrWcSGD/vOHkmc5WZdsjWFI7Zuumy9orGN8s5ru+7gOb3
	 jkQrap7Qwwujq4EC1lHdhL9b3N36GXNd5SZfvtWnKe+s9/LY57JhHGiR33M240Akxc
	 k/kbbhRqHbcGJB2YZ7wBmxRFPJ9XOMn2jnbJrFwY5gNta7FV7kVY1LFueoB4iBGCN/
	 C9nu0yo08PEE7Vf1+ByTSUxu5DujXQXWwUdO9fwOqChrp0QKuYwuzAek1nXiZCxUVE
	 +DJXYta8FTW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303EC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492199359.543.13944003683657596359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fd33b721ae22ee9f306cf356ce7dacd1a5f81cf48b7f4de92c50ebf55f3485
Date: Mon, 11 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754921993
