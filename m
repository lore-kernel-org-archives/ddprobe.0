Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E5A1E5B9E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773460494; cv=none; b=J9fu6xmhk5aRBkwPrkGTf86p6/czeUMM0u3PCUX4DXRbWtSUY80RC67/bNP/QyD5RkBjjoWlgz35FcvCFgZAxdWQqIiY+RgEV3pLecpsUYp1Q8MyWUctRqSkYxPVZiph17fDVNqAXxsgkmQN9tqGIAITCtx2kOkBTvK/0nsdEDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773460494; c=relaxed/simple;
	bh=WQMeWnDdUqBa3XO4ztr63aTDwghx5Gb18yhk/GEHmR0=;
	h=To:Subject:From:Message-Id:Date; b=K6+4nxZGSPuyPnJUSu/Av6sGjyifzMT/BqTKKmArSj5mS1CZimMEZp360uX1dz9c61ARguM0owV1V8iilgOD/4UkQgvGnn9kGQM+9Q4H0FaB2eK27tBOx0HgzNJ2z3NwF7cO30/JDdY9+23PZqTdpkDE+cl2tZL88X1Xe2KtQgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge6toL72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge6toL72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81BEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773460493;
	bh=WQMeWnDdUqBa3XO4ztr63aTDwghx5Gb18yhk/GEHmR0=;
	h=To:Subject:From:Date:From;
	b=Ge6toL72VN9qTLvDIrNG6K4Qm5kNpflWYIK2zCso4O3fcoXSphwUGxx6rR9oxlRRr
	 HNMgpiI+pJ8Vz/VxFm9UHqCne6+HnrL1dFgoaxYScYZVMqlF7gL1wpx2MXd0a5rGga
	 pud+f8b99NGPooSONpkTUkW9ihNHK0noutiUlsDpzjjvRu7Q+nCDzkl6YHgCUlG0sh
	 7f1Czwry0yjUglMn/9F6FscOH99EqSIyUGJcGnxCIIa9uknvTstV1zaxBBaWZe9Lrv
	 9X0Njenlgf6sp5ELPZKnO7AzvQKFGOSqi6lkXiahMgGCDs2E3tTuj0RXIMAlYLJsZL
	 sgLGdGaQ/GaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB5107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346049358.12934.9898499609987078690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d97897732239ae6edfcdc0ef83fabe42efc5c2982f52f3da7b4bb199892d5ac
Date: Sat, 14 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773460493
