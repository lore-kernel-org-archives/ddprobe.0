Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31982F2D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BBEC43470
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670436054;
	bh=OsGvAxnLgP99E3a4IAHdo1aYyvU2H0oDodg4Gxo2Imo=;
	h=To:Subject:From:Date:From;
	b=mXhtSrsVoTleuIDb34QJGMgIPXylhpZm46Uk5U79m4tS1s4PVBToTbjcCfiYuJsVX
	 lozgvTAfu1QVtpHWah6W9GP4Qi/cTOw3aMYFsXoH2KSDnrc7SUYJ8iIGJy2YRwBUdZ
	 tvmUoLx7jogXjGwFGhVBpi/vOTYpt8fd+2sx6eAXI1PxK9NAFdty5Ms8LrN6iddbQy
	 PF+xgJYYgVXGOiW3SwgNywRCAfjEz9k7Dx8PxBT16YjzAxbdlSR4DdbgYs+r+FT7YT
	 Xu37UodcgmPHSzesHMWrup8Ssjq0UTrjuOWawmKaBuooaTH9EEc6gxUZQUiMn63BdC
	 rZMIxY1Tq7okQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B163C47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043605436.32138.17055633776924801241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1624621b4d302962f424935c41233a80c47fc62dee495e4126fc60f2b5dc586f
Date: Wed, 07 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670436054
