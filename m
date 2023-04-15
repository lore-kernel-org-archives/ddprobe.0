Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F82F39
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE31C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681598705;
	bh=XvGhOBIfsSp+wm0dKiBZxN/xt4jt+goHfcYcySU3GVY=;
	h=To:Subject:From:Date:From;
	b=c2bgF9g2p6GxoGez7EHl3ru+MNSyY/yBMT2irqqCNPyJ3vCH18iGpvKL8wTT7Rhte
	 meIwl9N3abCEKHYyYRLfJnUQjQmii0+97uh8A0rqw/hiCyljCo8eJHcoGRGaOr5mGC
	 A3OLks6zFue5sMEVuo0DvBGMudSLXJDqhCBIVcXbBgnZe/iRUUZH35JLn42GEFYCcY
	 cusRn4Cf6knEkyZx8wONzfAjiyLumnKNRnWA6GBhs7IgkLbb1uGTXUIoQvDp1p7nc9
	 zfezICLLbUXKDBkbthXwo3+6NaC2PkW36+QGJPGGBTpev7ny/s8gGbgR1aBYcp9Ug6
	 rCE/ZsZ+wpmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC88AC77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159870573.14421.15131883308874890215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09cce2ec8efff0641ac1ca1cfbb0a7b4ff7cc650bc4c1c0cb0e06a37b77cb30
Date: Sat, 15 Apr 2023 22:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681598705
