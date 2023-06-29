Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A8510E7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A1FC433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688056388;
	bh=oa+eXRnoNwKAQj6G2z6ktP33zk+0VCzQguKiOpq/CP4=;
	h=To:Subject:From:Date:From;
	b=lRGv/dxE6OiEJHVvC5+0CG7+KdrG6I44h04Kjp+z+0Ohw+KgG2os7BZyfZMsnynkS
	 bp4Z5TPnYmwwuqbd70z9/141WcyAJs8SNP+/T4k/+BzZ4SLT0VmFKOZ/L7nuI11rri
	 jaecwbFbhUxEZv/rV6ecIaAKUscWw2i8kyzJsG8takIEKpstWwOFgKAzTdvVaor4VG
	 pDtKwtrpywiH5r/zMnKVyqRLXZbueRtJB0xfitcozF6NErDL72EPc1/ASSQZ1ZVkLp
	 k/xQKE4WFjiyZDBKEBVwSq1h0yJhKP0GxKIC7VUUVQEjzMetqlUYrQDnwodbf5PA+M
	 Gk3zdnVT7Q1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D74EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168805638873.4784.520920143030994802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ef5f95b88cff527c017e9d69fb96eb0c85d68b3f7bc20dbb4c7e749b16b38b
Date: Thu, 29 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688056388
