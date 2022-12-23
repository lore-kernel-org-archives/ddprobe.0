Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6608F63
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAFCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671812487;
	bh=YhqDTIxBC90DzHy5WRecZewkhFPG9qPy9T4bycw23vE=;
	h=To:Subject:From:Date:From;
	b=QCa8wanbZJFZrs/w8oTwGtNFY5Ee+61DjAOdx7CPbQi3eEm0Ib4uVEjIPYnqBgjso
	 F+RQ/ylMymNOdhbUEFiVCeH1ZmkchSVPP0RZF9GnjoKy8IJnxVMQHLYQBTkcCW8sQC
	 R86Odm+j94sOtrx1t0QW+PDIuzeRdCd4VkRVMu4/gH2nfWzcUq77ba0nY7+yzgDX+c
	 o0CSYIkG3waZoTDbNPVUY7RmakouzPyXKT2/eMEwG70h8xUqMpXUDS6nFEy/Wce5Gn
	 JTsGIX2bgmo6/elliITGhs0syXuwfTqWfBCh0ypHsJ9owHcXTsWxXAP59IrhcY1qt0
	 3ka2tgDlSbpCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFC8C4167B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181248738.24048.11787411531897579091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79eddee07655b7a737dd36ce74bed31f4384f477eb48fa73627973d6ba44bb5c
Date: Fri, 23 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671812487
