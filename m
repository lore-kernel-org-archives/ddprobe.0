Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15A37E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F76C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671411087;
	bh=cVL9ObwCLbT8V3OL/gMOpgGnISpIw4RuDHDG6TDO/W0=;
	h=To:Subject:From:Date:From;
	b=UGaTELCwuVoGYz4+fV4MIeBRD7NBGN3kLaRubMK93fYFmWsPplB7JhS0TmTy+hRqe
	 D8A2Jn14F2EV8ZmUFAoBf2DUFWrJKKURtq+lALdK+Xh1miRprh97QQ3ZVb3rY63D2E
	 lMB1XB8DaXJPMiqlE8+0P2sGro4vnNEFxyUoUakhamIAMdtURIvA6RiBkqBgh7ZhJ4
	 VcXT+hpE1zq36XFWIhsIjVHauXS4JLlKItbl0mAC1ylNV3A2dHBLM2u5RgyIV1Z3fU
	 pkGN0cnj+cy7tTeT9IRGEASqBl8zokRy+0v8obXPejARdOtO7a/IOoudtURgS3ncVd
	 QRvnBZQL5Lo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6F8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141108742.27134.5809955318858012536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463f76eb7d45cb19a2928a57c9f3475fdddf5642a445a0600dabde21d6387ab0
Date: Mon, 19 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671411087
