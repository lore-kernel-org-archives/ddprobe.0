Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC461E531
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732419354; cv=none; b=R3jwVvY9+I8RU0JMfMnqHc4j/Tj2w5PUuddL7q+0l4m3GYlwrVD1k86E9SfkCNqHJues+hNg6hkwUmw12LXLV9UKaCSLzdI/OJ14vM8KYsu0e8WpduuX8mei6TELIghPoMrXcuy7QSjhSXZKfExbcFsKNIoC9Pq2PJ72dX9QBO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732419354; c=relaxed/simple;
	bh=OFlMFiG6UgD8SAhf3e3+7f+fk9usTQsYo10PrcRs+Sc=;
	h=To:Subject:From:Message-Id:Date; b=Gzu/iFLSuV91/0HIoDkBP1SLGl3cIJpIABB7Y/zSbExpJypEQHehE6vsLSY6qFb3E0mbKV8LsEF3TIS6GS+lvQ6hVZ+7QImCXDt2SVsTQCXyAjeKMqCsCWMlmxjmMZMqZYgFhgzr1g135q8wBUWHPT9n9SYOkrraOw9C376e/FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqPiIcne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqPiIcne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59C3C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732419353;
	bh=OFlMFiG6UgD8SAhf3e3+7f+fk9usTQsYo10PrcRs+Sc=;
	h=To:Subject:From:Date:From;
	b=LqPiIcne9au7U6azYbo0ME1NgpG7CMNKXm5nclnMbFjwmcb6MTyrF4JPwMqYDaqkm
	 iGTldnuCwj5OVU/pHq8dLivgubxGaVMYuxfEjpymLp/O2KDO6NknB0+0FN28ppx0Nz
	 J1DPjLHkGxXslSTE+iQbxnXYgeQAl/68mBYmNmZsuH7Yz/Cb7qXIBPF7n4VNZMjFdc
	 ZhzcrIeZ+aMM3ipegYLCqdIpggi/L7kiuc+YN/apHMCbeJ+sNPjjPEL8sljb6a1w3y
	 aYGw5VFr2/889M1Tvzv6vU09ZcZZOJHj3YIWoH/8zN/ZplisCKm6+ZhUy80cSsWR/H
	 +n7+AG1b8DOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE43E6689D
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241935361.6164.14033811217043959151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364c51631c4253d2e57f159be898735dfdf3ec44c14c171826a6dd5e2df2684a
Date: Sun, 24 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732419353
