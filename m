Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6793C4437A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719261803; cv=none; b=PwgQSbb4EMwTmPCKPnmaXAKKh2D3mobNgri98q2J93SzrFomr+p7HQMwF33+B5s1TALZThncpD57vKo7Ah+6CkwaX1vQ2/MRDGTPeUsNpgzlw7TM8gY1lPR8C1W9f1dIrlh1NJQhRDFy2JCAmF24QAHcBAKDMivMBQvtU/XrAJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719261803; c=relaxed/simple;
	bh=H2d0Q6r+RZMF0T/8jLVpucDqvOPtxAXTm+jkbx4E0bU=;
	h=To:Subject:From:Message-Id:Date; b=BKrLWIcx6OEeFwtckCc8PP0DrIx6r4d+mkYPfb7DhC4cvCpt+ZxV6r7FlYY9Mydvu5P5X0EUB5lMmQanzWK1R69ZRWiA/x+RqBy9uKDgDFsVCb5Mmy0Gsj4a3U0RKthkkvOTD3a5k66lnQ47mUntVz2fXBhWlKKp1SJJZy8e0SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7egg9/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7egg9/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D19C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719261802;
	bh=H2d0Q6r+RZMF0T/8jLVpucDqvOPtxAXTm+jkbx4E0bU=;
	h=To:Subject:From:Date:From;
	b=g7egg9/f0sVjKgrwNaFp7UB+TkRy3m4lEX568Su8xOC/LL7a40lcrs1cVTsBfF4AY
	 8pxi2CTBZl+lta6Uo7dU2Y1FPB6S0U2x+78qollWrWhjr610WKO4w4QAlMg3YLvsOi
	 gY2+0vlcNYFVFfvXt/zTs/7m0IjtoHXyUcXomNYKT0wLjp93r5b1GjnlvMvCCRkwku
	 AKhuDIQv0JKZBgOQUsWGJR6pwDfMkqP9Wqtw9lndtp2kGi1D+kKfqHgIPCrFvInI7c
	 RU/7zOjUmnvpi1k9zbmjm3S3MCBbM3U3+XjpLLUV0Z2OZA/OHffMMpj2bIH07HkhqJ
	 LUz3Y+qSlpkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39C6C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926180279.13052.12885668430139721163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd961a6b479489685dc2a85593602a016fae82c63a2951c3611b06c62dc1ff83
Date: Mon, 24 Jun 2024 20:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719261802
