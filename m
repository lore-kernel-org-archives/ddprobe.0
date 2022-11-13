Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84776FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A35C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668366654;
	bh=6SgdnF7Ka1GlrX9/m/89WnbznkPh+T3jGRZh2kVvNj8=;
	h=To:Subject:From:Date:From;
	b=eoiaZVvsRaym90EdCyhRwaF1llccOIFtUeiA+DsqVVuNK4aQ8sKN+aHzmrmWMS7/Y
	 iVWkkhtlIU275/W8Yv0Fapir4ktK0t5iAAG07VFitfOZQ9dTOJe4PUvcfQDso5fIot
	 tFveS7s1MmU9fvpgOUwaNALkO67tzAkj8Lu5R+u3o0hwAuLMaevsaFLgH0/z3nsWjh
	 MFfWE8bpEfMRQUr9DxUZXIVGaI6S7s8Qw1GU4/IBjQ4O7M3ACluG4gM/YGHcPRqZQb
	 HEvLR0+vgHWJH4byIuDlvu6XA66M0H6wkOK700Rza4FTCyaE2tXtAkEhmMy2JD4pwd
	 RlQfVXizb4+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DA8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836665433.10686.6908449620505182825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637bb9927fcb3651acbbf738b4caad8084b350db2c826c7a839244566d0f5302
Date: Sun, 13 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668366654
