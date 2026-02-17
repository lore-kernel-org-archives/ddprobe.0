Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC63355053
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771332894; cv=none; b=DhdBIsrfEUyFG//RUcuQcIzjab00oX/5yrQVAkHvMYCoHnhEGqbEXzZTkO0a+W+weeA7QjmdJ9ZrH1eO9BWfMalTso/c4CPFTxm2214XXW1o74ikEVPeK12Emq7d25CHvyTv/165EH2ua5hrnOw9hfbupBf0QPj63n0qou2MhyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771332894; c=relaxed/simple;
	bh=98/9IXh4KSn5WxweQIFRG9rd/tKRDbSW2iBIccW6MmA=;
	h=To:Subject:From:Message-Id:Date; b=nqP2p9R4PY5SZtih5k6j6rSeDd2kjvRfPGvzYUr3q8+FzqGiRaaTCVYQALay6aNXqtx/5c/hhuBfxX6xjNj84+GQglaSt/SqIFIKdNWB+CElg5mOoHOZWSO4jP4RTM1R91FZBCzZjkUq6r6RhExaiN/kBF0ZhjrVZ0/tHXryhKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1vFl5Bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1vFl5Bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A88C19423
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771332893;
	bh=98/9IXh4KSn5WxweQIFRG9rd/tKRDbSW2iBIccW6MmA=;
	h=To:Subject:From:Date:From;
	b=g1vFl5BsyFjkwSx/M6Butwy7FoMsoox/vpZub8oj3jBs+hnacttVg7SznN9Rs17lK
	 qYh82sTrIF3KgA15bmdGdqpDm83Nl2EimdaOhPLyYjLIO2zGUEyGUwZKQ8wdl7K+up
	 dEx5jp6V80yECnmmbhXf2LJPIdxWZhFiMPYqoJPH1noCuySnGR/6MrbZGsNqBe8GKT
	 8nB41Bz9ylHJh3sUqp6kVmHKo21t3yDds88pIFk8wskE4T2tkEJrU6TY8MIa6uapjd
	 bWlDr+iZm+Nl2P1SUG6mlho8p6yNNB5iLx5lHUGu8XxLrlUEkKSa52ItF60JBYmRxj
	 rP0OW1FdE7Jhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB6E6817F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133289360.28602.14397674096066582414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4116287a4fca3a9848e8347bd69e7f5a0b09fb6bd57b5cf5bfc68653960b2f9
Date: Tue, 17 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771332893
