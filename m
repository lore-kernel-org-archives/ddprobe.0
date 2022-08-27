Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B520F15A9
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7550AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661606452;
	bh=5K5EyJJOo7ahzy2j0z0JyOnR7XwPO+R1PUTYSHVn8mo=;
	h=To:Subject:From:Date:From;
	b=Gxwj9tb935M5eVseKgvfUj1qTPSvWz18bkqt5jpEA4PKzzx+pEcuwLvgoXGX6Pw3u
	 QRaYwLOl9bAcru0mXyxmUTNkzkHoGhVOGoLnY1JXhWip2AxZN7NO1PCGO4iOereF5l
	 gs1d+dH28AA+zNKsN4lDdRXYir812qVPsvdUZcH3zzmBO3IQhdAQkwrwEVOpdNNuCs
	 slX+Sowl2IETLPM3Dd4wu5MtFW+I10GifRRLmH9nLmPR/u56fMZQXv4a23YZkVtbFs
	 ozDYzUbngP1a66A/AYRrfzCflh+1h8o7Tw/wEC1LyefXUfiHy3gdof5cscIrA3tKX6
	 HaLgrG7auLWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A469C0502E
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160645236.1865.13825711307578888928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa83164a5efb90d170a4e7d2284553321d91cd4aff38e33c39cf9a183d4c523
Date: Sat, 27 Aug 2022 13:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661606452
