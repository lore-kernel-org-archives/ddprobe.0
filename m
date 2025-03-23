Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B951130AC8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742743194; cv=none; b=Cn/ejjqktkFtpvpek8s+LnGjkHnV/bbEmUUADsq3Yp2BvjL+AfnJDo6KrXyvzJkZDM1BVWzg+tCKsH/SxZhurJbJ+lsQXS7NYyXUfKxYNgN8P1jSoI15WafBe1sGV/OJBmFQpaiWX1T/50Ok7uRKMcJFgcYXCSK/vnSaJUHmUxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742743194; c=relaxed/simple;
	bh=gqqLfx0E57sqqgTcgOuSvFYsFaZ2jENV4vAn8/94Rjw=;
	h=To:Subject:From:Message-Id:Date; b=RDcCgHlkqH8KthrqeVYzzm3DbPkUbPygmOo4QWyLbO7OXPjW8t3SeVD1Yei2mma8Ynhsk6TbNYxKVM+0ApjNRYaax8/3SwnIVLOTstLOK8Xprt+Smz8UzaviPhi5GGTLC0cwNXasa2Zd1aThxuefxMMHPZ6yxbkG+hbALT/zfis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pj+jHh8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pj+jHh8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0798C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742743193;
	bh=gqqLfx0E57sqqgTcgOuSvFYsFaZ2jENV4vAn8/94Rjw=;
	h=To:Subject:From:Date:From;
	b=pj+jHh8IB81Ot+5awMFrTf+RjzrDWufaBrZHxjnPQuv7iKfGobMNV3Nn+IL+SBKr3
	 S4tZGMJc4dx9MPZGPbdeMKKgBVtteRa/4scz41hkSNwQXuwkl3DvPdCkprTWffJ6/z
	 cGDkV3g6/e9siOUPr6wWBmq2lUjoQFBTP1VCYWxGb5VOTAQqxALAYyMsFPFhmfb0DV
	 F0nbZ9B2HlHE/rX314J9NdNn28zoDIL4B9BdbhjX4y68iHXhS0zsdWgnyIgN4NRHU7
	 w7ILDk9snMRWFBhQBtp0gH84+HhznYl20KJXT+1FOyRvghDJ/Nrjyo/oMlDr674oQq
	 +Sg4rOAev/xug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A478AC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274319363.449.12095112623558622156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3b9e02ac220230e400922d0b0d5883c1a314bd9f4b7250f483663416f2bf34
Date: Sun, 23 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742743193
