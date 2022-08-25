Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4A37B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F825C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661407252;
	bh=LosTidsheUpbAHEUy6Clju2dHgFcAQIY496ELo8ThBs=;
	h=To:Subject:From:Date:From;
	b=swG6QpcKTgVZp6hRh6PEUu9ANUhNolTisrV4yNiqbW0MuDwoyuM+Xx1C2z8X7K87g
	 GvLempd9VDSTRkNHDIFmAh2J7Mmtp3QwPaCmr65dc6TDxFjfOJSUb1sp7o2x6tXFwn
	 6nwHbkFM/4nv06uqeuV899Z3H0EvYSU/+Dc0xHxdJTogqEurTXMsaGaBlMm3m9P5uE
	 FiCXQLw6bZEJUvMKzXsOI7ZnKSYSCx2zsaQuLQYi3+HOnASHZTSEXU+VRM4Zxthe4i
	 ZbSn7dIlygWFNV8w8mGtc4p85F9FW70OeV8Qv/KBu+9qzxtJkTR/n3nNcQIE+MzOzL
	 MPKgllOdxD1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577BFC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140725234.20673.4512180534410865560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67922d1dc2440a616ae775b8ab4451b0058d96152a3076be1cfbb1c7161e410d
Date: Thu, 25 Aug 2022 06:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661407252
