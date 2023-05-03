Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4723E4A11
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE780C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683125346;
	bh=X1FchSuEqjPwEoZ1UDU/kdiF/WmXhNR+YQ3riTypuT0=;
	h=To:Subject:From:Date:From;
	b=Xi06oXq0mnvZMbkt2zfqvpTeT2p7L0022Xz/KFjIfUMNfonBYaK+kiosf/IIFxT/7
	 7Y6b4QAikk6Fz1zsCHtU3Q29Xkmbz/BiuUpJJx4leEaCQjJt4juxYwda03ZjFFBGHv
	 u/eCczCXyURtqwe0y58khlZSFTSvE3nkyTsPxJlDdeFSo1ca82owEB8meCPzSRk3Jh
	 PCnOyLxv+6aRFYS0XHfId+J7uSEddKwp5xrsAwdmIUugOBWlX2Hca/xWSn1nChdV9o
	 D9umZqhonQUsQUVlzdHQny1SWyzzsuHW9UXPaP2qqcLHzaFYGdlbBztRY3Zdx4ucq3
	 3y5tbWEvVm74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A58C77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168312534584.11066.2849141719395433267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95784a885198b5cec753e19d2cebd8329f130d12781aa9abf63f444d1e05447
Date: Wed, 03 May 2023 14:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683125345
