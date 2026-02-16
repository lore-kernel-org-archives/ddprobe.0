Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15815265CA6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771250094; cv=none; b=bY78byBcwFTOoGke1NLDeVRqXJ7aw0yTtAk+p68CovVd/5CddS9e6InL7Qk2NyUxHYeXj4pLk3TRL5QRUS1YwAb/5moaI75nLrFy8Wh3vcshj1YLWvHq7Rc5g+cqLrvkkpX2RPOnUdAsuJNqshO4FvFsjZLyxPpVUNzPDKXHeKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771250094; c=relaxed/simple;
	bh=CJhMeRdaCfXE/dgQ9SnkHpwznVbBPX3xRExrrbCdg4g=;
	h=To:Subject:From:Message-Id:Date; b=nyJVzHrWmxPDG5fIl7UYZm4cVIBOJTpj6DpecDPoaGIuJd8nlUP0VTPADKRDjV58qJ2omu/9DHSzCTvrgUz4lOK4aoDTKW3B7GfMXfF/nIc5bXFb+SJ5kWEfsPHh4Ou5RXX1p44Da/N0fwYT1ahTn78v1QFL05nSCu9P8Mpxu2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bou0wy8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bou0wy8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE17C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771250093;
	bh=CJhMeRdaCfXE/dgQ9SnkHpwznVbBPX3xRExrrbCdg4g=;
	h=To:Subject:From:Date:From;
	b=Bou0wy8ieGAnuRQSvz7h8+2jCfqgBCwLTEAOc+Z4fdRvy/NR10Y20JxOaLKW7P5KJ
	 CEdVTpGb9v5kGcWjxzMozhmQeM3+fcTanto6SaXxgWH+plcV0yaXaQhknfcgM+1D3p
	 TCdswWZZ+7gx4nZWKHFWtLtUXM36DpWuYrEQGUv0VpvBiKY3XalwARmeLC5AbTfaLw
	 b0OVN47UG3feMJN8nwM6raIutCIEVwqstDsnqnSLSKhBR7GLcJn1nCqIyzKfd9KSmN
	 Y6zZXMrU149NkuDu/wD8TDVtsKQCciXiyEaCxTNV+yxUSt0PAikyeTkOMl4KQ9IxcG
	 17j9wEiLLLn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C98E81A20
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125009360.14879.14201890106210205260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18015eea0f95d4287e98010856f4fc895afa16bb27416193229bf7d78260c2a1
Date: Mon, 16 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771250093
