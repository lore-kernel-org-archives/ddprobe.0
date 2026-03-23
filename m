Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0667F29D267
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774270494; cv=none; b=KP3M4Q9cRv5ULUyv5celcuBeio3sX6KIGg/u7WFUaFGahC9/iViwQzWfC9UAw+iZMvN0b4O2tFjN1iBsMkdov2Ql4lbm6tsbpvGEscY5Hu3b1TSZ3cO8TT3asRst5qUHLOdcAOREcDD80l1yA8GJ5ECsQQ2HyHf9BPYH+ozsn/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774270494; c=relaxed/simple;
	bh=4W/EDeqUs7c8N79hm4VBbqcc59tubM5hVmvhCxXSoVY=;
	h=To:Subject:From:Message-Id:Date; b=gDCcEmlnJDdOuSx92HgkW+lFFeKWWl6Yh7AcmIzj9DfINqGY43i4ThG3Xd4HSnBs60iJDJaGaXBRbYhKo+IwdnjgZGIU80H2Z2uttaAuPZ3e/5PSG2k9koc0jCPhjzD2HdhbdoO2pFQ4mZiUs8sXOai/Eqs/95VKVCYrWDJ2UB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un9jyOvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un9jyOvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7901C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774270493;
	bh=4W/EDeqUs7c8N79hm4VBbqcc59tubM5hVmvhCxXSoVY=;
	h=To:Subject:From:Date:From;
	b=Un9jyOvK2GKXu4RuFQgfww4XLO4tamxRVXuKSvS6SeOp9bCp6WX/gnmwW3Aang4dV
	 QBf7FP91DFsAku+4+szqILnsWwQbld8XT/ZEVM16uwoUWTA7rMFN3Wz9xmT653LFLK
	 Fff4TUPbhaj7GQoYLTspdVHgcaqWCoiqmaLdYTs7+FWhGtyLYrmMk3LTLFF0J3dXFq
	 X/hylAUFLKn2huu9VYsSa/7rIi+MTcFkMErGzzZSJ4jf2uypsNC9E4Co34uL4NC3fB
	 UAw+l4oYyURREQSHGSbDKCCxjH1kPxl+M6KiXov/aqT0uLIkSQZn9Or9M4Nhb5kDaR
	 JHTsA+A7bLkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F0BF46100
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427049361.26873.14502240978031021949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e9ac943dc150130a7c85e1faf66fc49da683113904353b9e9c59edbf84c310
Date: Mon, 23 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774270493
