Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB791A9F83
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773794094; cv=none; b=BLRDg28dF+wkd+PkEJkc9bo5OH0roxdZYyI5Lyzst+gRGiDeEGVRUyLAvvwmPJpE8QVAq3LwDJNfUC2oe2EMwZ33KJ/u0biEijchSZPotMQvpH3WsuzJldDi3xr22G4BA0R4j8PwQDA2QWZKSGwnsyqZH0ZiCSB03gbmLE4oovA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773794094; c=relaxed/simple;
	bh=r3O5VfS3OMgWmqKCkq+uPyjtiv4rW2JWSnlKqrLxNBY=;
	h=To:Subject:From:Message-Id:Date; b=RDxN38qqEWz9yop3TBvlRBWqgeBFNExbbcL2OG5LQrl1H8okuCp/I+MMIHJi/EM3ZNE1R3TqT3tzZMjL84ohrazUosRZK9UONweOof0BuVK3OkK3bQp7F2NQYlpdMepJ6pqSckyRjuzg3elTUB++MZX6rlhA57dK0M+gPcTeIIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ51FprN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ51FprN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A269EC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773794093;
	bh=r3O5VfS3OMgWmqKCkq+uPyjtiv4rW2JWSnlKqrLxNBY=;
	h=To:Subject:From:Date:From;
	b=aZ51FprNyiThOhQW+iTJVbwv5dhkwqmfm6EDcfB2/66eykI+EaLP0Hgd8X++9zMKJ
	 5fHQR6hfKhLXWM/kXBFS5relo1Jwh/uBJHPgTomA1NML8QoRqymIQSVYSYLCkaS5aY
	 b/pGUwvq28uPzQbpVfnfcH0ppHjzldnUDS7c9zqmldlAI64toj9Xf6ew1SvC4BjUa1
	 uI5g9EKuO3xbabv/w8/L+KzILb6y7mYy00jawXPUVfMRxnwQuj/LVZubsthyOPiLlj
	 q4TS/KXBxNjlAQLq5JXnPxLcy1EOBImp7JvQGdmzeEw9O71B2uq1eLLaP7e74sGgdS
	 LlQa++8Ld29Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91464FF6E9A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379409358.26635.4030671568309459365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34cd5a6651e115e205b14537e6ced877f52311fc8061ff5aa6fb0407e951214
Date: Wed, 18 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773794093
