Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4E9212B04
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746526794; cv=none; b=cSm0NFVlM0fdSTYIH8MXkUCskf8Un/6EuGLYX/oGUoWe3dKnKbGYC5h5am9qsYDXv7ar3Fl2K7kErzWO4V1+4feipK3Qlt9oN62d9GOnoADV1OrkhGbvXqU5IAgZ3Qw1sS8unQbwHHUmvxWA3gOTg7mKf0CXGjCz6JFLFT8vilQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746526794; c=relaxed/simple;
	bh=2AQKouLioF24Swx6S/XNnxO/++w85PBcxzqiv3QCqxk=;
	h=To:Subject:From:Message-Id:Date; b=tFewCEGjhDsGw/8+I53V2S1OemDntYmQlg3XfuHmh4cjg3WhGCs9zut8+s7hqrYWQdzpdKMKrrGFevM7ArgW+DiijR5DsYjaFNAEWAXFSyuyh5JT3/8yVNwu5fhqebsIqzJObb9gb224LTa0xhDwJltVUhLOhx0l6nFOJjIlkNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3QHPL5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3QHPL5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746526793;
	bh=2AQKouLioF24Swx6S/XNnxO/++w85PBcxzqiv3QCqxk=;
	h=To:Subject:From:Date:From;
	b=D3QHPL5DhjQmXNoYpKthPKDawyEJBei69smwpggWaMGW5ooWhVSqB8N50L7wTeK7W
	 MLovtEeHk18CRPlQZ6sgNKipBvMTGUnL4aCNMoYKoWVrb3Z5bWkY6YUkFXJ06boPm3
	 lVT7eC4vYco7Uoe8RDho+9BSFHj0PAgXSLCNs/G9heOTx7p2byX3xQrFLfo+vSf5pk
	 pXZ3Z6MMGWv6mZEfypI7GLzeDYTI1vLXOfOrXzu8kHzt3fB13s06Bzq3F2uB1PdJuH
	 Fx53fXpncLVg9L11x46kep9coLTjd7w9Vh4CErMxRng2L6USPlWnGt01KbXqtBM5dz
	 DSm+U8ml8fjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF1C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652679357.752.2132957582618523018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c857b5b0507908db9148a6239e2e601789ae492a04f40353cbc669153e694aca
Date: Tue, 06 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746526793
