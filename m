Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A789D515
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769747634; cv=none; b=NDFzHAUfCcn0EnPRYGcf3Z8trDak0YDfHEm8951Zl/8aLppgGyhX/9nBgn4/uVAV5x2fEi1QSyeOp0dce84McBvpJReL93I/EMFoqKGl8zyckGoWLEVq9VWIZ+/EisYdVZ5BTQtuS29ab8qWKKMCwjoLvNmyer2Wuib90uLGjLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769747634; c=relaxed/simple;
	bh=f4bL99B3tB0uAjgf8AK2sZOm9uUOVIFnO4tVHkk7DNI=;
	h=To:Subject:From:Message-Id:Date; b=TLv98Kk2m4drIUmbFPRozdw0QKFkUlL1UeftQKzrqO9Jooxgx0O3p3d++oEfhe5j+xBJEQGMt0TOzxcv/OkdsOwen8jPsG23VgCPdxSYecmzj6douZhO04Pxezo4mQJhyLCS3skkUnEVXhQbVynGndk7bgVZiGoCATe21XlLjGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBy7cKi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBy7cKi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B282DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769747633;
	bh=f4bL99B3tB0uAjgf8AK2sZOm9uUOVIFnO4tVHkk7DNI=;
	h=To:Subject:From:Date:From;
	b=bBy7cKi9a2beJjn1CTbfHpoWCnQHGQZVBMkSxC3nibamt7uhS5aqljQfBfnMhkmmg
	 NyGdnBpZ6qEzD6EeleNRN5LumPG97G1kdiwDmUYLUDK86ZZlKfwxnDKDWfI/Po/xQ2
	 NB7Zbq78aJ0WmdX+7ClR5dZykUpJp4a2k4EbtpbAGBT0n2QYOGpJXbLLK0fipGWv6Q
	 vCQJ5wrUvCfW4b4SWMbEoP6/xsPxiy5+bXCV7Fh+CXppG+Ndv1z03OjjZPonJPUdry
	 DN0y82Vw+UN6POjpSVEqyDz3Y7ctrv/Ovtw/VObqjm85GgqZwSFve8SBT/DdA1fGek
	 TiAWHpYpaSFGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C833D73EBB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974763363.18954.9066533044569536463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4cdae680491e59fc5804e16dd322399389c5610088dd245ed321bf3db1d915
Date: Fri, 30 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769747633
