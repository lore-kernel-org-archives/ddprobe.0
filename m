Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A0D635
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:48:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59FCC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686811688;
	bh=U1SSrVqO1hrwdOQjtiUuBe1zR01EqXpfIlNd7IX0sWc=;
	h=To:Subject:From:Date:From;
	b=ebqWrfHWj9hrwGEYFHi+ymGDB36uHcRVyjry6yHTWwdeq5R7jHSu/6T01/xQQkbUo
	 eafEUc/3g9Cj/oQHz459q0qgLbaLpLXzEMzzT1v9muvcH25c649pjbvFVmgWBo9efu
	 dvHWCdRGra2LHcSfto2OS8p8vMmF55qRLmxgqOqlvq2GARNaxXBTCy0smKJ5e+0u1f
	 /YyWcBhUI1iAYgDfZqz3I79Bpj24+njhr71l3lWvB58iVnRQmIuDHa1cXMtNBWglSQ
	 MnBM+XeXJXdU7AFsXSU7Tt10JW9SkpcxQsJXSKXR8AymRBZ0cwkloxX2Kp60UpScpM
	 FhzsyfxMca8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A1EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:48:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681168868.21160.1315184646992873251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8bdcbabcbd4a102dc12ce29fd459e87312c94e214f5ebeaf75568115cd54f8
Date: Thu, 15 Jun 2023 06:48:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686811688
