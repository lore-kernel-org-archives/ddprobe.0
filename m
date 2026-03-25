Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B91A3E0255
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774448694; cv=none; b=f9IQJ48ZTO6UZfvfP1Dg6ql/VVyHswH0lVc5AOn+U2j2/gtop2YoHi4dy94h0q9tFz1+xKGF1t+T2HFdVSuieIBy5ZIVHa7ZzCS/RbFjTwFVm3GRd3nXkDTxaKKDfQF14r4DtCCWu6Ya7EXIQjRRK1DTOz8EVbkVE1HVFi7jfrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774448694; c=relaxed/simple;
	bh=y80K0dR0AN8kA/fjW7q8Q9Ru0YC9I40lb9/jh6Mdjsw=;
	h=To:Subject:From:Message-Id:Date; b=JOBhqsQRxbVEnbG8JDiWIGofsR9t0ASx/hLxh7sMiTjF8yKG8TxyKpS5utqa60lnnyPX5hRXMyZUDxmAIWW3AFybLhpY6i6xRltezM7o9qAOS5whsrH7APEtKdjMLOL5iorEWUSfSVb2gFan+4+8ZGl1A+ud2Zq9JdhOkMdq6zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9cbjRPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9cbjRPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1632C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774448693;
	bh=y80K0dR0AN8kA/fjW7q8Q9Ru0YC9I40lb9/jh6Mdjsw=;
	h=To:Subject:From:Date:From;
	b=M9cbjRPlDzRggafStS9OZrriV0FMOAKbVD7DEskLcTBmfwCNfsFKT4pPj00x1+4BX
	 zV6RvFA/WN45EfTogSMgkDFdWDn5WKQItEZoL8r1Bc9aohxBGXGvmAXC3JboM8RCaV
	 1zXM4aFyF0bQiCPCeRSO5fXo9yyUVNKgIu1AaURCxF6Mxk9SAQaz0GKheH2E2AA4XH
	 06jnFT4flHls8gPQBsPX9+kwy+1IAg+wEbM5qCvCSx72wRzVv8Y8qpx8ubwdyuR27r
	 4tUumxUJQ75M46S2HKWXBgBT6BDeV5vuvHnvZQ6phJvF/I6PFb95/pAjGK+MzqkFUR
	 SeSVuY2KIM8nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE0109C020
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444869358.18596.13196715399076114749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfd7ac2245da85bf4634dcffa574b353ed427411ffab6b0d25b68ee09d4ee3b
Date: Wed, 25 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774448693
