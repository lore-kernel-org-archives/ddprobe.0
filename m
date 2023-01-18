Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DC33C16
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857ECC433F2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674058287;
	bh=2UCrIk1IllqHebBRvGe3GlsEmSjoZDCZYr/wf4Vk3xs=;
	h=To:Subject:From:Date:From;
	b=AvVOYqBRFkRii7lz8HwUS7ln2ezLhdmgA2tIbNOOmEokTbTettlLM02xncAq4RmRU
	 TeLYbmf1TYsjFtdgzm20hUM5U8AAnrYUlL1RyXZjl9Nj1gUU654/AjnS09HBHGhI6h
	 tTSSOY90zPxu/i+eqAPwx3LBrOzZJD2rLPetuqXB//S416CA65z3GlZ9pvlobx65TQ
	 WC5R7ONkr/YZ9Elsn9/koVphz9eZdrk1wXTNfwYe43cHcAYXbxky18OksIOokLR8n7
	 dyLX+auJLZpiMzGPZToe6+Rc/YNljpBY+jfRsAxRLrZ2vFbHafa/97E8sXSVxOB+CG
	 TYmRXUYImeD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA32C677F1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405828743.7197.1317779024447618094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419da55ab780d85f29fb28c2b7782a6922bcbc18aad3473da53d7a5b452009a7
Date: Wed, 18 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674058287
