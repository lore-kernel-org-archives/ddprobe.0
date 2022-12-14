Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF13428F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7923EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671009087;
	bh=YaoATudxRnJfBAZn9jYw1tlzRPsZFlroS4F06e63CZY=;
	h=To:Subject:From:Date:From;
	b=T7cF4hbzKx8kxMRgv+ItL/Ptvan+z1G0fJ7AP+m6wcJRWMbhKGkwhCqf+DG7hpuox
	 nQTS8xML2WvdDi+n/Id+kvz2uTespJyMptpQ1LmenoeJ3DgGQNQnvGq/ELTJrBvN8d
	 KgyenDlzCIGm+e9VdHAQW8nlnXw5cHDLvMO96mxDgbbjRAWR2RIFMEBlowcs8+/czQ
	 qDyGPTUTL1F72nVEdP4e9evWfy6GZv+8atetEFimQZFYxGz13LwEhk2bYJF68Ixcof
	 /yAIC4S2E8DjSW7zfmgu5MA+r3GKBtgHhKNjrN1XEVnO848otZ1rF38boXrpbsFPvI
	 F7TXtQEtIGrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6012EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100908738.30132.6020604228182939173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92cfff0faaf391f9a6cac3779fa8865625db73f7898bb9f6092cc10db0a7d7c4
Date: Wed, 14 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671009087
