Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FC74C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDDCC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666122053;
	bh=bAAnhsI5AZRPfK21vWVC6TdT49RRAQ6AQ4dkm+j1UVY=;
	h=To:Subject:From:Date:From;
	b=IEfoNb9szVSstm47816RKsd9xj6wMxa6jEF5DRJ6ncLMCsBdxNvgUGj3fpCBCL66m
	 dYmcWGof7y1Am3UHgJvdBjV15aOCsZzB46I5PYunF5/gDDPcihAjDn2YAb8Qs9jebS
	 0gCHH35N04cmjkF72XRPu2qExRZNTaUvYHfo87gqH3UcZ63JWcwMP+EV/sD8QtAfFG
	 yhjPR4S5y+9JrIsyGKfWLPp2Ld+KSTeMvfO9FZmRLu/WBYiEdym625SeVtPruN3G5N
	 C023FqUGdCCd0Nor+mmCKyGZEJC0HX5V1/q8iK8IUqr10BBkhljxrn9WRvJ4Fc7we8
	 hbA3Pcw3Kh+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53795C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612205333.912.11595330453680675023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a12c17ce63ba4a58172b722f2aecd1d2d92ff0c74a1ad9b4b33fd779335db7
Date: Tue, 18 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666122053
