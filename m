Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA6B23A1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F62C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665937253;
	bh=EXI3uhL5XpJcqeTAADxDRFz//CPd7b345u0UAHOeS+I=;
	h=To:Subject:From:Date:From;
	b=kKDg/d46SKgSMyUhA94uNN/2k2M7ZQo+hfd4g0Zqg1EiLxG2E0MokQZh9WgZJmjN7
	 dP/Z85n1UcKEn8LqVPqFEFaZMCdJsCdmAODMjPeTkXmBEdApaL0rvHRAK9WdZUchbB
	 3OfXaldXL3quk8eDjNbUtBu3dS3vhvotXtIaOoVWPgj7i56DGMw5lN07XGt/CfGtrr
	 D8kOIVc3cdOZKOMcRQMQ5rWi9pHht6upaxOKc+IIfBCVY+NPdiinVZW3MkK68dqqXl
	 NHaeECuzZbRLFRaeFxGB7+yYaObA5UQM/FZDTtvFEbM6LQOsdSZ6qdWHS6dFjOmlpn
	 GLZUt5gB7JTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C30C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593725332.20242.1343136786091938545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0720c4ba0fd67585f9cb6a5b23cd7b164e261d8b753668c6dbcd20192718c967
Date: Sun, 16 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665937253
