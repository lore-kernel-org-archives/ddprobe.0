Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F925D1E0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750855794; cv=none; b=RdqYCqogu9StJMuJX1t8L3GPuC4KNPv8BaFC6FzOt7Z74pPTQan2Qb2ZBt5ffPkIKBOxsbgYetaTouZg3mR2cftIk7CSiqzTUgOcc0MR+vWxurmawySQzo/FpcvptnBgNGI1PLWAU218yvQyAed7X50UutgmEUFUVYzi4O3FaXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750855794; c=relaxed/simple;
	bh=QiKMRb1RXm1mPbeGqfUlCZ4Hd0xwX0+UNfGtPv1sQsk=;
	h=To:Subject:From:Message-Id:Date; b=BUeU6YeNi95ZIFICyGwc3PB9J5OwcvcM0bhZ1V+DiBmfYoWEnokL4P9JB8RKP2D5lMI7CkzbXNMUZgtZK9JVNIOySnUf1sCmqf+iYxVwI2ycNllKlYPg2Np7Gu1mgJM+MF5t44c7XUVkRlwrkW8kwHXrmPdmwBXz/YmPMvjNYIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsN/ACl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsN/ACl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A181DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750855793;
	bh=QiKMRb1RXm1mPbeGqfUlCZ4Hd0xwX0+UNfGtPv1sQsk=;
	h=To:Subject:From:Date:From;
	b=PsN/ACl4am+HygNQJD8r6w1PcNgxLZRpQ3JG03pGoETQ5TNqnFnQ4qJhkYVqTlCoB
	 oP+VFNd9L76dw/B9KwNiRoVl3Bk3isL5L5nmpXYX4axrbt/QncADLdLK/u9bvwNOCq
	 nwBDDWmIxzmM8Ty2lXgG8Pa74rTcZrhzPeh+7h4/80ycXPurbKobjxtfmgK5VxibV/
	 z9RL4Tpeh75MGXJuz7cteD+t+s2OCKOy6HLOyIbsRwcUIGFvDYRfVWLJ3RNrVJKS3h
	 WEO9H2beXX+QiNIplQLRZ5w6okCEYTuQAITtb9PJdEJehVcJBoc15ghsF+YHx4ZuPx
	 7+OUL7F0ZGgeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BEC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085579357.27895.15266818544386556483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd42ebd02f2956c30515572676ca2038befad34069c75095502810b60c48e438
Date: Wed, 25 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750855793
