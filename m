Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F92D23C8E
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D5DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684416365;
	bh=yj4pSinkFKu57ZowVRyUHJoVdig0sRMdknd34veQnY8=;
	h=To:Subject:From:Date:From;
	b=PLZlE5d5oP8yrlKNk0VZrl22wNVeHVImYLvOgAFUjRq96CHVDPEcePHGf71MvTwi0
	 FL6/Ks90CzgMumfanDdXQtELVV6jegtEoD8o/1a736WeUQOa7/VJz3Zk+lVQxzR1Du
	 gA58Cr9dQVRfDbGv/Daw05gnBBVCceGA4zaWN78KOylL0y1lPRueCKEuSCV9Xq+DVb
	 vpeQns36D3nrI+cCU3YcBi9J9BFXe3Q2uhkv6ubrYDgBPoTTBkjSxjJcLPJ66O4NdX
	 2deSSw7AdgI63sG/Ahm2h0v+nKvk6/M8FqGILo3iQqA4v2w0k/+X6+qfRNitE6YXiu
	 H6GcX1knozpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6E8C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168441636583.11411.3220938896271839955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f775014bd5cbba21ba5c34be9e5283e6a654171e1f08d229009b227cb62b18bb
Date: Thu, 18 May 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684416365
