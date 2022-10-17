Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73A47F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82055C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666007453;
	bh=QHZJ9djTKk5yf9pC+vIVg98VkdatDL93IW9YMAbPwig=;
	h=To:Subject:From:Date:From;
	b=u7OgJp7TLG/mkMFlyeWpXNDQ/880AXdXrVLuPiYqaDH9agr8gXVpsmeToiemflgJf
	 VcLqI4WFHAipmECf6xiQR2U1CZjtJasmi7sdA4PaOQxdvG2ceTUTZSm51ld0vjS8YM
	 i2iaU5efMafhVjO3LFLpn0p2F9s6sTirqGHyAlgPt+LDnHRnqlWUvMXMggc6PBjzDq
	 dIts3vnOawX3TlR8F1jBBCgemSM3Or5XRlb0MryUUoeL1YLs8i9FBoRLlTJDy20OXc
	 n82Bw+W84TSnuDlXuagzZ3VsNxfdztRVdjcitX4ZCtXh6vUXC2WanUll+KBDb5d+aA
	 j8Ub8QI71hOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EDBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600745339.9776.16612003927200116536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f4a83b78541d24b2193328049757f95a0bf5c615f2e390ae3e636cd51c1356
Date: Mon, 17 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666007453
