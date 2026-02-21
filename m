Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196F129BDB1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771649694; cv=none; b=iOjb7IKy5RSaof5/JCWTHVmCCS6xNKppkt4m+6qgoVs41Gf9OKgFsobv8GC9G0QyFC8grhR9oEYiNbXamPMTO5OPDx/NNFmeMo3xaVQ47J+urE//FppMsfi0OeLToMFcz+wfy8qYdHAPLe8Iibc279uevvQhSZmgY4xAwgCTcXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771649694; c=relaxed/simple;
	bh=nnSKpBCNefRr7B0fcZ+oeYuObxRv1kHHOlt1h7dFTQ8=;
	h=To:Subject:From:Message-Id:Date; b=Wpmy/dDphq1MAxbHZmgh+pcQ2tOdFUkcV4IYTTaRtR/yyWixm5X/TTV5kHAPYBrG5DNhtja0uxkh4wyJJ2M/Iia/8+v4ieuLj9Kgt+fdKXtCnyd2cqs+44jyjG0UNVkNP5szHsNqME4Bgvzn2hOOte8Ax46++dtaymbniM5AZOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk7QIRTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk7QIRTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FF8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771649693;
	bh=nnSKpBCNefRr7B0fcZ+oeYuObxRv1kHHOlt1h7dFTQ8=;
	h=To:Subject:From:Date:From;
	b=gk7QIRToacYqFSKLx/FdWNAoA2aXlfc2lJbx8Mj29lJdE23o7y5ZDDOotZTDHXSUD
	 kciWI5vkLJCqTx3uTCdo/HTKqykcBnwsjPURR0DLU8GLxJt3NENCJhcYzQFO8W5kJr
	 hw+QS3JjH04jsqAP2U5xpGzLqSkXkCOQv+kRGYBQ6I50/AJEVrZQUCNC0UxmBBgK3j
	 Vj2dG7aQVZMYoDJJkO5aNmoO3wg0MKVoPoe5oU7muGFj1eF/MWRT/AriUD19UXaL/u
	 KT/o5SO7QOyCpW7l0LaGblPh0Gz+E1xKVBEsM7bFvmnuX2USzQvl6hufiHsvKemaxZ
	 xTfeEkq3q9b8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FDC5DF90
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164969358.15397.10358500798558612678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccad64d935cc08243823e28c122b8d044bf4fccde40184bec086e542e349083
Date: Sat, 21 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771649693
