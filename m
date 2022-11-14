Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43AD10F2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7840FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668388254;
	bh=WHnoPI2J4vukC15upzPH7+06y8NCw0iiYHH7SBG2RyU=;
	h=To:Subject:From:Date:From;
	b=vHPxN8kOcc//WWAEErAQBIGyx8C8NDcH2xHHt6AHiVNy9RymD3i7TgCH6rDX60zgc
	 fa06+RDeP122agLvKpx0QDhbzX3iRMoUg4CukOfr09NOiIl0g3nqYguu0mvBZ+29CT
	 e4LlqRanwyKomNA+4WuE6tMbcJsW1Pn2WQuf9A4tjnNqM1jy+wt6se351h+8tBoqLr
	 wwo+XSal3fvTieN5M/7GiZIyILfMOjItzHdXT6b1b5XhE55C55YkgjtGAHXVdHgxd7
	 tTpVnPM7KoPMEqUpOI+zykdAny1nabDDjgfTuzTm2+NZOUr58CL5CpOnbDO7t6EppQ
	 VUbhRZYZE92Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D75C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838825434.29473.769979107451484070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a01b43fc493cdbc26968147ccdda75467b232c408fba116930fd055ed374ec
Date: Mon, 14 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668388254
