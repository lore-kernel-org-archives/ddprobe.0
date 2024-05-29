Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7180C3207
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716951863; cv=none; b=ufkqKsMF46aMmWJjqfoK3e+Y5lZQJL8Y76/Q/EF0x6dA4Cr9SOewnLwiyy5I/7rdD+XK05yAhp2/QqLqbHnqASAa/YVOp9m+6EnnL6FBi/GKt2NNVPuSx2iaT0VSvnD9us9W8UFJKzYocPEhezwxILhG4mvQqD5Pryl7IBKJ6Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716951863; c=relaxed/simple;
	bh=4Lh3UiBi0Wnc7QInGdxyKFutUizGMoUzEf8SKRg/mMM=;
	h=To:Subject:From:Message-Id:Date; b=DdZ0UdgNs/Zb4sJUtbkGeA7R7yW96ymv7PI44bIiPn3aSLWaZLTNHwjfxcq9Lligs1nIdyB0a75r490WmnZTkq7wEBNudaDyS/YNQloEpsq/XSuMkh3wkcEPeNh4yobRuqLqLHNQzIeB2H9AMwEkqUEkruW9hSUMhe3vUpZIfms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob35kBHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob35kBHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D2BC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716951862;
	bh=4Lh3UiBi0Wnc7QInGdxyKFutUizGMoUzEf8SKRg/mMM=;
	h=To:Subject:From:Date:From;
	b=Ob35kBHE/5a5Kyw+iEkHp/Ov7tAZvE2ZaIK1Nkr+QGW8Gv5nacmZZ2h/qMJbsqOtj
	 XsL9COp6R8czdyWFQGYGIkenBpO+Y5tLubLKrvmoy0mzmWCsxPaQTe5j/Loah8WiT0
	 ss82Zrs7HYqBwWesjbROFWHvSmtSRJ4BkkaVgqKWWwT50HAI9STbPz3U8QDC8VIeDl
	 BKj3wA3S/p/f5wso7zoECkCuoDRxvjn8C/ved7iy/o960ZkXcy6FhfR7+nG4cxPcqV
	 qu8D37KcxeZzTnkKAKMNaSmiaGJ4sdLpruf61aksoZhhBpU0L9CQIKZpUHXgZtTbWc
	 u+3XU5v1/o78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1AEC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695186282.29666.778331283372445372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23550678b58e596d00bc974f09ca181a4442315f330166fa89dccf41a42f1e82
Date: Wed, 29 May 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716951862
