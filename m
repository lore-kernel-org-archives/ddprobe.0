Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D7D7B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEDDC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677395765;
	bh=7GiMWZYX58UAXRm1NM1ASOGab1KocO6VmGX0Whd/yis=;
	h=To:Subject:From:Date:From;
	b=Q0danju7mHsaGi2+4gTa6sxW16RJDAQpcVsXLy8h3y6vo1yqr4RoCktLwqU69IDm6
	 Z1T4xn7+/DFY1toe3y3ivsEuK1Z8NHtxueb0sabsBFAQVPsbJLEyDaKuoph+MzjDyt
	 B5Njgtp2z2uxJqshWqLUaug+/9g4sbRG+qjmsdcCvY4jMc8rGuNzNpGrpL3oYBGRVV
	 RsGqPHli29DSijlKwmmN6bo0sQGB48FOPrlRdGNexG84Nj4pJYr/lRCNqrC1QIyNU9
	 dz6vhiWOBpgviqcbtU/BGHSv3CJ4dFCimAeXOyUgGHBhbXGfPs7ORQzsqpnggtbR/2
	 L+LeeS7zEIIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83C3C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739576572.31965.7777294249688168974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8adf212cdcda79cb366211570462656de3d81ef022dca3d1a877bbf19476cfc
Date: Sun, 26 Feb 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677395765
