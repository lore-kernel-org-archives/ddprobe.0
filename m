Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D908E15B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736F9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663893053;
	bh=m2JQJ4s1KRFzSgp2uTRTZJhkKgBLvfV1zADF2Jmuplw=;
	h=To:Subject:From:Date:From;
	b=eMo7uJm1Km9IVfr7bSHLoJViQ/1/LDMVcLnzcP9fVwVyUI+pESOaH4yDuyJWVyDVB
	 Mro/glKcd5tU0nY7KGisj/p3LFbuEeg0c9eIMbArZ8ZVtPt5mXWZTlkNbbGMk7qwuI
	 8PoiribOCQzXRLFLYB/5jpIjJ1sPsRCzvOrRfC4f3kgwluBwJ1xZ6Uv92OBJa1rgY1
	 PKm/ZB/HQ02YRJKnGFJsGN4OFVaIG/MX8lN2knGCY6sLBIyTdpN0TqUUEEgJCA1hyG
	 C7OZRaMNsAd+I237Wn9TfUkCSr9bv7Mf5dAxLqp++/eJPUye/r8agZ0RN/lXGbTO+X
	 kHJyalGroFacA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551C8ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389305332.7653.5791037370158357082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0644ff279096ef48598851d806bd35df6196cdee2d56863cf7e68f9647ed971a
Date: Fri, 23 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663893053
