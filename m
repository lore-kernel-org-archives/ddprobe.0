Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E8D125CA
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94E4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685433785;
	bh=wz3LLRwnK/LqsY4b8IMCuy1oJHcdoZA7MpI/JtxgeFo=;
	h=To:Subject:From:Date:From;
	b=FVBlUHJcfCcCGWuZJwronEaRKii9k0KZ4Y2LzcnpiTt25T+SdmXdFFCusVRswIwOv
	 fR1JEK92Znynz+GnJ4sJHn0V9lBQKIbZuN4PHAcWIfRnyeslvfnCumCIwsxRaWjAzs
	 aejWB2hP4grGDevS5tSE70kFXqeG+YOBsHXz5sLXa4dc0Ay+XaFzFF3gABj0PclJ46
	 FTmg+v6pjHK/shvW1/JTv7Vv24BokNpuKBAORqx4jJjZOoyO2lABexmndTttXnMsO2
	 RAC+073V7SQus+ND41+n6m1OHVEsWldGag3/562tunQUGEV1gr+LfqRmX2aN2ssCeA
	 6HHbp5kHcQACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C260AC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168543378578.11818.5766039376979063271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7cb03d8c5b2ced3fbe08901c909201ff15c2f3a00b8fd6a1ec5d531b9a3f52
Date: Tue, 30 May 2023 08:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685433785
