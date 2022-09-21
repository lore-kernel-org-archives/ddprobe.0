Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF12666E4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2D2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663782653;
	bh=UBHEkAIBvo3PJejmQ+9dCMmhXTtPq1WejQJRErqEjdg=;
	h=To:Subject:From:Date:From;
	b=EH9ySLNY+nwSFI03I5hex/GdMgD3L//WeHYbtSCXUkWmUbzfAGvh/aCmkr7KbUv6U
	 ouxopM3sSe0uMqfH25ZYZjZalGAPuzj409Wa53so/fnhPEcqkveVhQeC1VDg4fMlVt
	 Gne4gV0BCVaeXp3z/mnwERUn69arhfX0wAV6cok845XcadYTAg2i9Qi2J9rpbVVjM9
	 X+BeD5+y6NrvXUKFtcfLo+EE/eMJ7KH85WiPIENMVTOfeHvFMbooVJSogft+oado5X
	 uDa8HOk1Rz/BKsbDuCwJDStV5dDHdHkJEB+xWKZ1Ig42Vn7VgBb7+I6ORH37UADmXA
	 dRDeyk9KusOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55586C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378265334.15546.5489733080132551250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fc9fcf840cf3fef3d54625c7638da353fbaabeb12b8e3a6aba838bbac3f6c9
Date: Wed, 21 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663782653
