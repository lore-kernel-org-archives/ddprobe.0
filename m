Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F0B1DDC0
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGSqpw8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B00C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699532896;
	bh=SvsN7RpdJGIPjeQ1nNFQ11INjv9oZtCv9Kdazbh+4aQ=;
	h=To:Subject:From:Date:From;
	b=kGSqpw8VRI9jtwVQFiZIjwWUxTJe4Sa+YqJ5AJQBR/0WMU3vGiQ7+M3y1hvftNF6j
	 UVjlW8mLg5GekXL7DY9fcPQkiCyanvjHBWXhLKIQ00JDPlGT0bAGgaVLjU0oK3Qvwg
	 2HvyVX+mtk+/yynJJHYf3+V0FIUxnXjF9cHITRg/d48UCT80jKOwFFkclCBho79TBA
	 R9vN98MOrY+dehTN26TdDIbnJWqNANVd6A4S4a9DGLT3jXG/e5U4vR87tW3v+V5cXo
	 cYmN2YJL4BIIkynoBKicb+dib+LhQk5PcRP6QuS/MJG+M/H9eIBLw+NkhdryKQ1HmY
	 WTveT9Is+7VMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A33C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169953289639.8812.16317630284521000539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a399782069399320ef7dcf5977fcdfc80c80d43055c76bfa0faeb535c8e7c3c3
Date: Thu, 09 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699532896
