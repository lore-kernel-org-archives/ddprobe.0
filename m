Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A951862D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX0fmC1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF1EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704337696;
	bh=6lAT5lgXwdb69h0wmEB26pCMpF+fE3x9QaMD7sw5z/Q=;
	h=To:Subject:From:Date:From;
	b=IX0fmC1L4U9ISSSmgWhvWO/CPPl9/zjrkN+hfWjJFtGTZen2nRPXg+HYCI4FYXada
	 NBctdE8w5El7OKyIO/VGuTjf0q+nC19vCrW9hkNHshLBDn0oUN2eUyxk3iL41n5zDO
	 L2LGWRyL6Z/I7K16hO4lrAM7Akvi72S9b4Pswz9PRyjhgq96zX38fwRu6IQgVz1EUe
	 1JVuprO++uBSisAaric7Raima4WSKrDK94BgQvk0aG8hoVRHOHTJ7dSRKvliJvFrj+
	 ctPXFqY8wScyUqeWu4KlDGRbBaQCsb+/OACCLiuEPbKck2WP5b4OHYmzQSY/5Qcn+K
	 yMLimFxwQKOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD97C3DA6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170433769641.28602.4487937552086727606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d230fbec5bcac24827b3632121ccb478f02da30435be7f606278dbb7d743cf
Date: Thu, 04 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704337696
