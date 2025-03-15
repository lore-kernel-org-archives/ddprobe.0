Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3C71990B7
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742068794; cv=none; b=og2F7uz/wQxLmsuRvrFC27Bb1kwCPJzYfLreeKthVqMp5Mngmv15WZxw/nlVPMC+PDIcb1jhAZhGLKM4B3tlqVw0XprRv+72TEROb2cekyFJ++kltsMxUF/AuHZLyRSFVNwrU7X/qc7dXre7cuCRaJWwE2HLBNxzK7iRHsehWyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742068794; c=relaxed/simple;
	bh=+71x8rGamRdPIUCqEC+7zXcjGRv25n7YsEbJ9ECL74s=;
	h=To:Subject:From:Message-Id:Date; b=iyPJuSfboY0qs9QAuG+4mTlXGbuCnGX+y060NDS9QmBausLIefgkn6JET7A4vnjgfJFjAJUUTAjzJAEKWaETQ/4HNOEB12DgbiF/oOD0lTtXgB0IRHwhHy2lQEflTQFJZ50sPttMdvrkz+2nPPfjKW11ExfD9mTT1vBuJjOqBpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQYOlTa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQYOlTa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4844C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742068793;
	bh=+71x8rGamRdPIUCqEC+7zXcjGRv25n7YsEbJ9ECL74s=;
	h=To:Subject:From:Date:From;
	b=PQYOlTa5MoHk1x9fHiItk4W6Y6w8jy4VZ7RxabSoiwUArnk/O8AWKzT178JJbX8cB
	 Go4ReSefRHt5fyn1xYGbtLUfBW6BHCC1nvd2L016GmugHu4suf55xJ+PgGJvScOz+8
	 K5vzs8AAuycP9CyQaTK4qeTtXDhvNJvcYGmkJPsHMDe3fXkPT7t2bGZLsH6Ax+WGch
	 usSbGF/1HRhQ9TAvpjm+eD+YJk1pkALyBnogiG9uhCMzqTRzpZjDnaRwfy1Ifr3EjH
	 YT+MWFBZHFudSV4vzYkQCvlz6/pMkYS0CIuDETMc2FGKDCaAkCKfqm1S3ej3nCszZp
	 iO7PR2XA83SIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DC7C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206879372.29058.4804036514059074505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19165c18beee4003843f0326aa314dde838f30f6bda181000ca70ae765f317e7
Date: Sat, 15 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742068793
