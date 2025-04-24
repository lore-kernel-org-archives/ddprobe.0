Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E721FF45
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745488794; cv=none; b=ILVy1t6djjLQNPu8QTFoUD6f+WYXsp5q7hBJsxiFKsTPM+HqUN0eZg0bLaKvtlQO1TQuOCFhAjfY/YstkBVcD6ftK+0NM1qlNaSdqPBm1FqiqBP4XPKLk+X23viSoL3fSSN0KFS89KcBRHFTNEn1d7JK2+y7Via9/VcBMT0AifQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745488794; c=relaxed/simple;
	bh=0wnRqeDQ8X77XogDjx2kkOxexdS2xj0Roxl1qvKmy38=;
	h=To:Subject:From:Message-Id:Date; b=Hh4eW4JSJ2KsKeinPSMPHVGs+9XdByUXiPJrL+UdFAjc7vY14Mak5lTvRL27E7zWRdsswbakQ9E6TP8CznvZXYre/zz+NCyWA7U2eB4aPk3WsWs5GBZ1hD8K34LHN5mN15evy9ybpRlGy1nDsPZDOA1HXl0TFLIDBOLrMmCZgxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3LalIzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3LalIzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745488793;
	bh=0wnRqeDQ8X77XogDjx2kkOxexdS2xj0Roxl1qvKmy38=;
	h=To:Subject:From:Date:From;
	b=h3LalIzVsAJ3HlRN1jkMzOBFBbWhurqvrqSV4eB5KqByo2NfzcGq/haR3VdEjZIzQ
	 SP+/R8a5u53cClOViV+SBCfDcNjGzHYXED2X7BlXCyIfJ7OhVQDPn+kHGZmLkJ1zrN
	 vUq+0opZu11S6/F61DrgYA6xzIjyQ/7+mRptqR6iGTCfRi0Ywdlg1fPSqsRZ+bdhLX
	 hs0Ig4hVCZnC5g1gXvoV0cZ7hEA6Otq6Bfn3ZvM/z+l+LLuIwR/dO+sU++ihn1W1Gf
	 ctzKyDdyhVe0yhDBCYLpnBA4lXnLDj4IBwaboRC/lg+fP6K/BWSNwvQckvyZYLP2Pa
	 A3DnP6SMyQobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B7C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548879357.31821.8588985911995527316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e187c97dafe304905fcd3a2a7d1db27732f6eb11c190bacc90ee811ec01f0b6d
Date: Thu, 24 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745488793
