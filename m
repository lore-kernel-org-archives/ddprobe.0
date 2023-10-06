Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5645B15AD
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 01:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/xR2xEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE36C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696556228;
	bh=3Ox5xdMhnqUj1B0/uyYbSrbUFTGQ00EZYJxq+BFKqzA=;
	h=To:Subject:From:Date:From;
	b=N/xR2xEzdpKk4bOOuM93YHqhRR7gHoMcMePjei9kcR+Go+n1i4cSvgS0ZYGcnlwJf
	 SIeOy5otHyamHzj2v0Jnc/nZM9fRhJdNrPsGDBc3w5ypnMIUC1AdPHMRI4DiNCmOwf
	 5lrD5ZZ/EWEvL1mncrPxHrDFAWbGCQdZhxExIsQBO3VubaNEC/Bq2ISs5JAexJaMm8
	 lvbprKYjcpas61Bkv2Qu6f6bEhwEaF9qu1/nCQEzn3vblSEH2FtFYPZIEbM24RdHAj
	 sGDZ90A6MN7T73vB2+XLahh7jzSYc7khwXI1gMCNPZD0SocbyM1IJIkXkyqfH+knhF
	 QoC3Aa64ox/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46D8E92FD3
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655622866.28371.8978126973253567685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd8e69d9cbcdd2d18b31f3482f373da65fca5054873f6f23a3ee849bf7a1895
Date: Fri, 06 Oct 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696556228
