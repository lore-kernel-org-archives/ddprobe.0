Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ED3A926
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752940794; cv=none; b=OCXeR/dn3gxduGj6pbV76cKMHtieJsZz6QsWVGgwQzpmUWP2lU512b/tuxrZkIyONOmdSjQANnqMfUppQpae6ZYJGMXnO9PKbIHnn+c8LFEbAi0KwFSkKA6j9B/U0HXELPMCXoh1OIPEvXaV8aum4nevicdSOCcH/TSJyWJfRGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752940794; c=relaxed/simple;
	bh=ue8ezdcBbQq/QnwcxoGXFWEOhV3TZfOw2ppLWnGNo5g=;
	h=To:Subject:From:Message-Id:Date; b=WnLLrepM+gpZibBREGSA/PxuoOHVCX9aDO8S7KTFSSaqTUvnemQnzuK5YrOfVlWFKaMZk60jDG+j8PYc4Z/9YoMdiHM17OrlorNtEu6df0SIHpAwGVHNLN4J6QjSapG3QZubqantB3wmAoxCxt69+h1qw2Ty80ccfe1/sNvWLzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7UOMWQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7UOMWQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752940793;
	bh=ue8ezdcBbQq/QnwcxoGXFWEOhV3TZfOw2ppLWnGNo5g=;
	h=To:Subject:From:Date:From;
	b=D7UOMWQB4uDPWdIkTt44QDvAzQZC3AopNK0R9ImGo62HFAHeFOhuLZ3up9XFNgfb0
	 sxc7VJXv6LrMipb0kxvgTy+vZ/qSD2HYDq+3qFX/RK/UHnVVQd5S9tixXnethy1Ue1
	 njM+DmBqKeA/NiSbPf8RE/Osnby2Hy4CWaRX+HiyqTyQ2rmYD9scntqlR0Oev3fLaN
	 jG9wnYeVLwo92Bf5D7+vJCdeEMWjQ4V81KEEp6h5Q8QbhiVgUEdR3945kLsEYUCiUG
	 flWYIjeUSbRNqZ2wKOUyejkEXkDlY5OKhraCzB/rADzWk7aZ8OWMmx76EzGKGOL4J1
	 /cXA+8VEo7oAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE2C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294079357.839.6439006605182762543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13839b5d36d91898d2d107743bc5d5127f5438734611bc7ff882a2672a3fead6
Date: Sat, 19 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752940793
