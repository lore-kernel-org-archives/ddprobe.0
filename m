Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4025E1FA5
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 09:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE250C4339B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 09:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681033865;
	bh=eicGfikQL5hIycmFlP+557lUjSauFOR/C1/M9orynuc=;
	h=To:Subject:From:Date:From;
	b=FEJG5q/YcVuCZf4i4GyLAYGYjFarGhbybC38dsJ0Dctuq6pXlcyKfcG4kBx4aFfxM
	 8PLnzecT15j4mvaQHwjPvJd+qcD1Z9fqpcvcQxvvgfZPskovmb/IbgK8YquYCiBj4T
	 szZRXCsTZIdLixOsMEpJE96A9exOJUEDbnJgKX/kOKlkbHPqbBcE68eCjC248Y6xkU
	 wKo+9gx0Az2qSyuUiDg9zf0wvinGsjXqbVkpJ/Sge6T1uyU7QXyetHlfsmGvo7JF4c
	 0OYBSMo+I40igWJ7+fes1h2tclMOxzZJV9e1JMDkJrTCb2cwwlSg+Y1xGY+hMEPP50
	 uosmoLc0cgvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28ACC77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 09:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168103386578.18988.1829862683292016699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62c224a9f464cea097e580e5de91512435aa4459abfcaf08dc74315ba5ade2c
Date: Sun, 09 Apr 2023 09:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681033865
