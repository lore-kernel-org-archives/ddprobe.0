Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82CF17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C7D9C433F0
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671795087;
	bh=nZXA83UUHS3Da22icDk4AMF8SD+Ne5/g5GMpTUdK92M=;
	h=To:Subject:From:Date:From;
	b=QtZ6p7p2HFX8a4Sx3vaalyR3K52cyvCVgsriw/UAkJrQVecs5mCZAaPXPlRNtiokF
	 M+8KRXlQlju9rJ8fj+hPeb1sZe5gsUPRIHbAeoSOSwR7sCVkMnAMTrJwd0s5SnzgpD
	 xkwROPF+1ZBtmHO/oC22xNZBCrmWtw/wfv6DUPRScIrL8eVMkwY87dGRa1KqbXe58T
	 MhtOL/YLa8FuRbCxfmyc67KGoQT0q97crRxwJJ5x9JbGoaJKfThMnCNFTxd5CbqLZF
	 M4TIxITsn9Moxnnj783wy07SVOGvXstVQdjb+Y+unPKludOZjtKDW7kH+OVxsef2H2
	 AsIF/cOnXiV4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFCFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179508744.1456.16596766331132972616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05c4807c774958353f4fa88b4f7d054fdf2f4807122b4fd69441b676adce572
Date: Fri, 23 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671795087
