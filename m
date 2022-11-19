Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C621F2119
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7438AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668858054;
	bh=apwqANyGoKM9ylcQd1Q/xLwEw4kX3xUMEn3iLvsTeDQ=;
	h=To:Subject:From:Date:From;
	b=rTiUQqWGfZ3Ddqkinz3VwGACH7EPX6pEAbHwnIdRFbGJBzozX6cIpSjAKoXB6Kyl0
	 wvmMoDMUqZJ+hj1ri8unp8jz0iTqTIa5/UWuW7TFOmw4h8ap9+5KLQgSvFxOifYXxp
	 LE++s+LfLKn+HsYP+XuaAs+6WbWF4sY/3TBJAzleQMjowh0H2wJRm8bgqElszkxYwK
	 YIjOjQLTQMo/JuuhG/j8jsSlyMAsc7C6TVIMq03G+jXoOBfhVjbkB071h/eMYLcyLs
	 bh8vkLjKOcx7jQ7elcXN6tb9LrVpezZyU7pX559ID1y+jGMr6XyY9hnq33OK46aJiH
	 En5pY4ZLNglcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5308BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885805433.27925.1143586186743818906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b912a4840f98aeffdfd4286d2d81db41b504e93d4059890129f4e6db4cdcc7
Date: Sat, 19 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668858054
