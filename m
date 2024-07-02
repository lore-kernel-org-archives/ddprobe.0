Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EF5A7A0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719945923; cv=none; b=SXU1vSxGtw7qtmDoicNnuhfzFGbZw7/9QztcyoyKvefPhw0JJiamCUSmhzyfMpLU1xKP8DZc+6jvO5OW35Tdqq8V+KjEcy5hWig+kdHWaCqn9CFlHr6uh1TDsKqgwOweVQK4vI918qUcYwdgwAyzFt8ABz5za/K1HVaikoKOtR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719945923; c=relaxed/simple;
	bh=j/9goj7UJRxCZEU0Cbcg/IFQEDJqVgQnt8sixIe2Ikk=;
	h=To:Subject:From:Message-Id:Date; b=AC9MZ+6pERbNalBzMN7ZpA0mFXcJTk5RfsI6EJTon8lcuZTNZjLxb4JjR3oSiR9b4mpUa7Chn9m2dRZLXqQTooJiviiKYUS48wl5FNKuB2bc1Wb4fjLg5YWBEcwZCtvLwdxmqhhqlqcwqhUtJ5R7SSwZSXumreUuQH+2p+M5yjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb0RpaH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb0RpaH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD653C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719945922;
	bh=j/9goj7UJRxCZEU0Cbcg/IFQEDJqVgQnt8sixIe2Ikk=;
	h=To:Subject:From:Date:From;
	b=Fb0RpaH9QxdfUG+nCNg88A3hPm4L64985s2N3iu3pqDvby5VJcPUGEV2MWoN6SVhi
	 qztiEpJtnR0Tmu+XPWGuGrx7sN9mi5/ntcvfpbve1QJJWPE3W3DxMIiTkSkjdT7ZTu
	 l2nTAuvn1EeRQo7F9q167T3Tb5lSh2GrBvHt0TmXUiXSAsEtEREo0BDa99iWsnL5KO
	 wvTO3Oj0IG2yk/fXHNMPgMqqLoIRCCpE4Jscv9hsk6ym+NHmSXLpE53UYJ02PWs3FU
	 cY0apxuJwzPDdK17/XLDtE2sfcT5eSJbRZzRNQqGcTBO90iAs3kxja7OIwYwBLrW1L
	 c2tRs/gweRElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD58DC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994592276.21192.1196273854590763496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a157295c7d8816ba8e3bb644cb444753ddcacc155437abf7165374c04420afa
Date: Tue, 02 Jul 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719945922
