Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0CD2DCF46
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768739034; cv=none; b=QPNMfJa5f8768NRCyYmdS4L9L7u6ODvi65UmL6I1zChgkWj0kFuFnH/D6G8oDi0CtpTHDbW/HVNkV5mtWW8eKSZT7GL/oY3Ers+mo9IrmKdk+oyujUI32Hi0oB716Hgyh8aQRU44K4rxyqSgYQbwYu45cvzn0SuP75bsotCF4gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768739034; c=relaxed/simple;
	bh=x0xI1SMy5Bu3wI07WJXzk94wEpVi7aTvA1yM+owgEvY=;
	h=To:Subject:From:Message-Id:Date; b=UADkjWkiRY7xYRjB+RyHI4J6r26t8h9P8l0jY1zcbEqcUXcsD+7yfANww1D/utLhxfYvxuUQAh/+J9A8rzhiLJPoiJGmHv/PW3lMZIvTLihztgqsFwlR+u3K/i8G8OlK4EPBO9QAdtExYkIJoTpKiNpjq01Nqm9shGSF45sHU0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7D7DXGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7D7DXGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B70C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768739033;
	bh=x0xI1SMy5Bu3wI07WJXzk94wEpVi7aTvA1yM+owgEvY=;
	h=To:Subject:From:Date:From;
	b=W7D7DXGmBDiJosYozhfDw/vjX44Gdp9WVUFs6NpYWhxrv/+ADgtirWZfczKcdeixG
	 gaGhEA6c9pGL09KMbWfGHt0B8LL6McNfGsjStC22XzMLfMkEySjiJC+Qe5GWqROVUk
	 gFVHtKdKtJGSoVQwk1ra0Ck6mDb5iEJ2ifLnxuVgGVRXRr3HpAgZl3AD5MdE7kZsQ0
	 sL0HEoXWLie8HBVfsMnPODTs8rfG2zxisDs/iNNi5SyLu3i478Enwp3/Y+G6IIKjC3
	 F1LZB6eMrzuRdPKagnMPmgvnZByGLll2ycf++i1Lq2/DbA/K2Uzp8zsgO7q7lIFeyp
	 VzwHbIycse2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B0C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873903358.14155.3271551338571153065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43007fde00fd4def062d584565fe8b8c8fd135f19c856bc9947e94b8c00a3b54
Date: Sun, 18 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768739033
