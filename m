Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465038DE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741135135; cv=none; b=RW6+5xTg8A2sLoLnuuESPhm/Z7hizhwv/C3iiMfW+O+EpYp9a0sebMdMs7DQNAR+rg8Ad88NQCzlIoYRehTX2F6YzQOvwFqZoOQvlnzot+xNyTMwrwkwtqkrHbcQDay4ndwBTi+HX0dAhxQXNWsHE/k6AGl3D8zSBJ/M2amz2M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741135135; c=relaxed/simple;
	bh=7Hm0Vo63XtY8oYXFymhUirTVL8vFdFuGZD8B6Z6A0eM=;
	h=To:Subject:From:Message-Id:Date; b=azoPGolhKq9rGlrax3pYSPNTw/QeoyU+owfPjRwG1IOuh4e4zo0F/rwnQ2RwbauR34HErajbU12WnYtJEVNB6cCXfYOewN3joFr7sXdp9SB3mLBtoxSWY5SoEEPYQDNewGZl+gCzzhdoZ6QCtn7wN6KtMPQg5Pwpqt1FMFLYGyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0GRWTcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0GRWTcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9BCC4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741135133;
	bh=7Hm0Vo63XtY8oYXFymhUirTVL8vFdFuGZD8B6Z6A0eM=;
	h=To:Subject:From:Date:From;
	b=W0GRWTcReTDl222Mf3VCO1jXH3Lp+8L6+hdfQtL4Y00ifJD0kZp0GzVT9oslj/WL1
	 7oY9x3BgvFylfqTflFAHIThl6zKa3i4jDkK8kgwBqmfkDBCfm9koVCSo02GBrryAST
	 T0xC+ofnLTKPNZWFnVD3vcRCza13LEBcvkvllOiq5R2pUnO5uQW4hh5Apd8J2hR+Cz
	 EjAMjtTF9Gdwn3WOTkYBAITUrX01knUaAVEW0eqV6Gt2ru4OzIa5fspRFNQqGSBbeX
	 h8Ask2rWR7zxceorDy+z08mXYiO6RqTeOKauOTXi2NOPhwYNd2K2A+hfLDqm7CBljn
	 oypLgMyMoNBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C216C021B8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113513361.28131.15879079546250434796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890186721af397aa2e676fe2e81cd4cd69ba585649ad819cd4b9bea1a04e2802
Date: Wed, 05 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741135133
