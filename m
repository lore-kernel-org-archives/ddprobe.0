Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51174682
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68917C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664148653;
	bh=qtZWGoKm5fNblfZ89e7mHk2SkhAjAknfhfYdP4OqK3I=;
	h=To:Subject:From:Date:From;
	b=Aif45KgTFMd9v3lG+Ig6cTEaqQwNjBTnyDZWsldTT9NbDHCltigxuAEVMCb6vxMmm
	 HDms+VjD9cumAhZI2jXSnHYGDijEcdtfVKEvIrMrw75cj4XVzNrYcwnQ1TXXa+72E0
	 VYMV1VF75A+ZX3pkDeZtkT1Ki7v/Gz9h/d25iieydjaT9o567jjo95HWb0CxpNp35A
	 X6+GHTEn+eqCvgM9VKIRqGkuYZRicKox6ISOsjA/qb2KELpMKaxVfG4X3cctTMkfXl
	 hfSOCeh07T6Ac/aL9rStYLETMknlZJVWwWgHCc2AUN7he9rE0SVFtl/Vd6GIMuYI4U
	 KJCWVHCR9KPGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5214EC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414865332.1902.16482775695216770642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807900051ff2a18a0a86821a4f520f77b83c33a84208e3bed9ce663e1342a2a4
Date: Sun, 25 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664148653
