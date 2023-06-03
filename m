Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6B2EA0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05CA2C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685780886;
	bh=MWpp8fZijtLcX74/VcxwgJli0evDby+q9DlZ9hdtTWM=;
	h=To:Subject:From:Date:From;
	b=Y60VBg0wHQg+CLA8AvqfZEgsPlo1lonRC3qMrc7TKkjusUQ33KlWTm2oDrgmcm000
	 gU65saRBoZ+VJCSoIzdi8/cSL6iznDA7+na61td67jOT/oF4db7O8FjGfwBqFohA2N
	 R5ILP1wC11GIe+pZP/ewFErOz9j6sYD7fs3Fk5LgMgRCTQbm4Nuwi+RXFD3yVLaTpq
	 PAu68o6COUl24+eZTMvk4ejp71t8kbMfR8PBLAVIZYzNZjmsZp7tGYr+Jr/hNB1Fo6
	 76geCH+KJpSeAIlA23JZRfG1wi6+BnojRIdeNumh0a6lB/3ivZl7WhJuQgXEPADZcP
	 cehRf1+wocG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4F2C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168578088586.7078.1646523517856524063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48695d3908efaebf19815f76c342f7db0234fe4913e30db918519a585c53dad
Date: Sat, 03 Jun 2023 08:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685780885
