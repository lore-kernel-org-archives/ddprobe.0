Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D290279DCD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767162834; cv=none; b=WQnLycGV67/mdsTFiVSowU6w4h7M0xTsU1332D3aStDLRfKOhALhPKSxkbPXMv8mhLhDkQbsEWojd4u1Bws2CJloM6nqPLyHLi7yvpU99B5mpGGdboNFADGdh9W0mk4TnYku22AbnYFb1o9iQGJeAqyiClE2goOsscPKGEiHgmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767162834; c=relaxed/simple;
	bh=bY3cCboO5pqO8GWYqv9H8xrk1PZumDvwTmT3GrxkBkA=;
	h=To:Subject:From:Message-Id:Date; b=l4Ri0a13Up0H+Ih/zx7Qni4G9ARj5uK77YNsjkG4efL0QwN5mE5BLLuXGk7EyE/RflwkkgrHfPDBErFOU+kn+QThdZOdd+mCmLtXs+XijxK6lglGMGmdEhc8fH0kDv/bREdBeRMQE3n+2iDQLwC3DtxvkJjfH/rPrhWv3SETC2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLsp2tLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLsp2tLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767162833;
	bh=bY3cCboO5pqO8GWYqv9H8xrk1PZumDvwTmT3GrxkBkA=;
	h=To:Subject:From:Date:From;
	b=aLsp2tLCER/ticIzZzk919D0qa0mNDsxcjPKfUDlS1QPMr8LDpG5XcTCZwg2WkRt7
	 MZYxVBsTOiie3kASkFpGBpXEpGO0KLjBlbDM/gAGCfFQ61iummAoYKZGJc4eloZ9Ys
	 wpynUF4SNnLJ6UvXCgXPI3HDOLA9qPOGdwZKN73y1NBp3Hhf2Ft+OKf1VVtP7B2ZAv
	 KCIt4Ckatn+PfCHasgxOcH3oS+L0oDJ0uLXInZrZa0goyN+KmspNEAGdXpFVv21HTZ
	 57qxjPTr82bjg90NCABTpPKZWM7cxA9TJ2Q0aodtqqshAsywkeraeIn0d1XUbbX34S
	 Xr4oHshN1JXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF46EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716283358.14241.13030599085702046729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d11f1f0691a7d6833872a4c4c32bbaee85eb84ef8c01d77c67b61183e7cedf
Date: Wed, 31 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767162833
