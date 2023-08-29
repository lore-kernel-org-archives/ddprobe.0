Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEBA17751
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 18:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACE1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693332248;
	bh=3zkFVSHRhWYEQ9FbXIUKDTfHGf+eO/2Xur4LcfuhQ20=;
	h=To:Subject:From:Date:From;
	b=HbzLqTuAdavuqyptAaGaquhErXorEqtfBvNmw3jMvRCp+OFEC629T17klz6RyKc+M
	 /d3Wmw4udbBkqPjO4wPvPrJG10QpgMYhrL/IlTNdJJmLRtBvkK+iKpRH7m8w8C9XW+
	 BevIvOHjowxPxbz+YyCE4Gs7IKr36I9NC6ftE1XRPCrbc+I8t5iHiaL8UGBN11SBoM
	 bsS9bOWC+7cWplMKEsvFg8Nsdv6s4ZPXY13PyhZ+vdV2NL2glk5BoXlZqpDu5Gku2M
	 7eLpiwwZKke+ZO63Z8W6a82ILVh2KV/3OOkAwDXLpGvTaPVm3zjQtjNHVPaIZiyQ5A
	 PpLkw2+8lRlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1FDC6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 18:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169333224877.28904.8545157685075122232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c6e481018341bd0f7b116d18fd3d2be90121a346232bc352a40e9a70c8d3f1
Date: Tue, 29 Aug 2023 18:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693332248
