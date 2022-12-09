Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA05963B7
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C50C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670602287;
	bh=DV0YP99zHjTXxjQgpql1SzL64ang8djypLYlmzbDxPo=;
	h=To:Subject:From:Date:From;
	b=OCr+EObQn26LiHhi1T+fdQKCd7rNSwi1h9LY8pHyeUDlcOM6uZ5LHmMyUmOZLOrsJ
	 EVtcySDXAfjdvMsB/E03UnZSpbdi4EoxgFu/LW08PsU3X/3KBQar1JKLw+0cDRc44l
	 CYNrVB8IB8wATfnZL9ZA5WPIz7ootH6zy1QfTNi1rSfdd5/cE7ieKUqEc0oxegJZ1M
	 c2+8OdbsXdsKH2Q5scI/2AFcJMXF9uv+hsbPhUI8150NqsPOalmX74/ESnm3ywUfEl
	 +ol13Kh9Ud6NyHfFFFQZGwcGxAD++DBHWWdBX4Jz+w/OuMuMTzqh26cBGSMD8SetXr
	 7SeYmI/VxURNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F17BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060228738.3987.17535778398545586264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f122697a78746df1eeec0348e704a2a95a65ae510ca7e5974ac7ff3c0045e2
Date: Fri, 09 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670602287
