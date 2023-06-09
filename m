Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA7BC8FA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA7C4339B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686302705;
	bh=dDgxPHx/Y7cWvWM+gzturIqp/Xis3QafzzUOOm+xYyM=;
	h=To:Subject:From:Date:From;
	b=IpUMamBpVigLHS+SitRcrhaMf4q3T4Ma91J4mQM/T+eAo29ZEA/jiX3M3DktXBm4i
	 /7fdZIjwawHXmXjwJXw9Q5I6ceZDCfjLIwgTbbAgrgYrxjRgZ25EbRoCNatB9Y1TJu
	 zwhqR6yd66xidiZBU3tjcFRx1jl9q3o0Rd+/G/vJwO3vp4Z8qXpqk+2fZ0OluP2Yja
	 5OwtWuZD7XzfnDFigGCh3cLib9d8vQFDzHC0W7BhsRD8Hl48xFFUs8+1gU0+KiD7aZ
	 acL9bv7QmmluVdAQZciLFNPNiK/EU56Uy0HBUn/c68N1QYYEcio+vo3+HfGgMtrF5j
	 FHuprDVh+96+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA48DC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168630270575.5618.1364946816619961033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ee892f0dc8af42c4a58131ea632f47caa2f41278d057a62efb806581dca42b
Date: Fri, 09 Jun 2023 09:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686302705
