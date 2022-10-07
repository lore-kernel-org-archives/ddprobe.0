Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADD9ECF
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAE1C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665147653;
	bh=PtjzS7fGmVTCA3vuVX5kSoZNQaSIm36tHMdAoa3SuJ0=;
	h=To:Subject:From:Date:From;
	b=tYlI8wujKz8XzYHShmyRWkrrmg+4RjTlHq0tFjTnsGV1GtdjTSSKgU8ceW3Gutgix
	 ypa+aX0L+RSXFw12+ZJ0+x2YKjE6B4GbGGdyzpU72yqSsypet+7IAoMmYePHaio/Us
	 oGEA5w7CS5RzIn3RaeYU+G53KQEdgafYeo5iuJuI0GUpBuz0E4Rb29NwplxQOFxb6n
	 Z3kdxwr9lcO06LDDSF+8TnkTKdm/8G6tv1ysQhtti92VNV1dygQYaADPoJ5cQIr4Ll
	 49fUjsKMn/27tt04qR7p4yf7+tJ84dbKTCeWt+Jdjh2ItY82DCN+QEASaoSkdPargA
	 GgxoYuU1Vgzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648C8C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514765340.22671.8393371726639331932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ddb1deeaf787012752f6ccfaf659b8c446ef397ced6588c30c35cb2108618d
Date: Fri, 07 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665147653
