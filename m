Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A425474E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786900234; cv=none; b=ZYfq0y2hn5OCvLmLNgNKHbXEEsAurQphCnBeVAM26uUf+EGnzsqUMkUvMtf1yMF3Pza4CTll+1bJ56vCmPWEpYDedOgEbl+z2GnksOXWYGo5KI76ElZRPBN4B0JNB5CR4cVtpchES6Z/RyL5CeBkf4uRS6yLkDZ4WvB/POi4dt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786900234; c=relaxed/simple;
	bh=AgfLz05VzAL8zLFqgdifX+vFf2aKkdnXJ9oNk8mYLFk=;
	h=To:Subject:From:Message-Id:Date; b=KJYolYa8BwmrH4gVXHpvxCVjI69hyd4WO3ck9TsTeH3zZkSDTn1vXgVvLtZ7o9kt2u/vUCv3NYTJNZQRx3MWpsn4Jo5O5O10s6YsHjgTkoAJ3CVXSZ3QGxRG+bo6xg+W5jIr9adaXLFWEFEC14Hzb7syaRP1gmRsSPdbZEo3obU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfvvaHQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfvvaHQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B2CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786900233;
	bh=AgfLz05VzAL8zLFqgdifX+vFf2aKkdnXJ9oNk8mYLFk=;
	h=To:Subject:From:Date:From;
	b=BfvvaHQnDE2sKzB/HWVSK1Hy2oid1vym7l6WXGvk3Qc7+9kBMwqe9PlMRthoy/7xx
	 icp5v8McBTbxezlxQRG+tiMoloig2mksIv83sxy4Y1VXxZoECsW9+/qimcyxq+pnKA
	 kf/awLXyV0S2mblp+V9ypD5qw62DXr5s/7pC2nFTnAoJ6zupOwoU/0h1xHQ2c/GQ8E
	 u0a9mOcDzGEbOp9O2sDAaYOdKaoSezr2Mc8YMcw6xcTeioqiyYqr8aWPXYxlkcBc6s
	 zDgqJCCfrZRng3YXVJ3CneWKRbs/rMlNYkMns8GTSjCiTMG9iI1y+5QH2Irj2aRt3g
	 bOfw/5LYz7ESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA938C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690023369.398.5127334317016413641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c925da6ceca1e60af51a57ebdb9ff8cb3e054582867ae339588aa9072890fe
Date: Sun, 16 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786900233
