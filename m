Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A9D3174D
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi0EwRmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87364C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701098896;
	bh=5+nrVxWfPvjB5lejotEQ/93d0WUV1Vzwxf9iPJL8nsI=;
	h=To:Subject:From:Date:From;
	b=Oi0EwRmDtEYTwBE3WFBqP8hLf0i1i5BjCVo38HqpukOPavhW1DvAhC8HPbHr9LBRf
	 650t3g4M2nRv75ivpu2iamlwFfg/M5j//G0nourWhHOQnldXQrkFULjpkcv5R9GR2/
	 p/c1RWgNFIRmDjJmEpq1iQmuUBgdro9i5O4wEphx72ouW3JBIOLi2ens3bO+ZuOiaP
	 z6w2FVPBeupIGIuvzIVkgRTbhyi6dVmS9er6M8ZjzkZ6nQTH82/wumoq70Dn+KM1EF
	 ID5Fnm0b5FE+24VUnhrQxP3uR1+4QPslcgv/h85vNFafmGgCt+LV74ZiNcRR2m0f7G
	 p6GRbvnVpS0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D13C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170109889642.22163.9182534091432057432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfae13314f837ebe127640556a1fe0a76fcc241ba8d81491d91c12b91e5fb72
Date: Mon, 27 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701098896
