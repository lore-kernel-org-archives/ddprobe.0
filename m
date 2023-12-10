Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05D163A
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INQBDVlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7A9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702213096;
	bh=Xda2bjdq+VHOkI1vk5oBI+HNq7vSQp6tiPGShuBSRAI=;
	h=To:Subject:From:Date:From;
	b=INQBDVlK8nqiV6un3DdBCDWozNlrixAatabiMdTS13xfRX0Vj697d9p7F4yeydGNr
	 lHTpT43zYJx3Zczym87y5Hpw/LLYs+Sd9eOi9xgDVOJnmSAOxlC1E6LMQewhJoZTlp
	 8b6AP0zV1sf8LbM/JSDWueRwy1yVGrUcZavSz5jCvYgwyHf0RygSixY0sMpYuza6nO
	 nMugee2L7wnmdoeYAlYpK/qLaZKG10W3b3d5BI5+0PaorfwBSOhIpvpmCzN2Ft31Ry
	 gux5Nifq7yfBY228H8S/eem6qFPnnBmR20OoA2Xdp4w6zJ4PdyX7w4TEi3kxB0HMsZ
	 jiUSQkQ06VmTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D11AC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170221309637.27423.9088209590912300269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c76ec02d03a3b491faa237f7d7b04027be522501582fb12895e5cbe04a9cd2
Date: Sun, 10 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702213096
