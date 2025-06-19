Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B3528C5B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750352394; cv=none; b=Y+QpNwVvaVvW015BXll1NLvmgz4oi08rObxHUXRGW9Q89funnWCmQPHocYMP8KsR1SkYH5l/IDEtjvKNUO6/NqdXm/LfKgWrb2dEvdilgGVUBTLBqT1K9l89Gr8suqnx1qAPko53LWMWoW+PJ8uFhYt6o0hGagjMWDHN7CEItlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750352394; c=relaxed/simple;
	bh=qbjnzn6J/7xQlhF31XpFGWSbsT4X2ffrS3Km5dLumkA=;
	h=To:Subject:From:Message-Id:Date; b=X1Mkxi0hgBuy2HQDzu8BtOUe8dfTxoGoy8WAplJY9NIuAxwckbL53ld88fWdh41Rah3hquKrBLrqGD/dUEEpCIDK8V9gjf3Y6UxBXpxCvP7rbauasVHD73rR64vaUCaU7jNaqoKdTDwhizS25xeJjXf3qeM95KcEk01KtB7kfm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaAkLsm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaAkLsm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F038C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750352393;
	bh=qbjnzn6J/7xQlhF31XpFGWSbsT4X2ffrS3Km5dLumkA=;
	h=To:Subject:From:Date:From;
	b=iaAkLsm2MmHQsTbJatUPWiLw+tm7eE3sOEMUmPjd6wfOcBqgVEW0xKmlExnuDtKH5
	 XQPJnAtzHSf2eH+FxbQnp9SzPv7lSzm8TDNOkLlJZYXGh02van4lleuSwKM/w7jcMi
	 OuIa/gO12/5bMXgVIaXUXZMbffhtpt04ox1/+dnRMkELgzLU27Rl2ldv2VjVLehH3y
	 TmF2utIPyzdHiXXq2xeAU1UmpmAQs8g2r03XsjqeDirIqP92nJoO3Sfg3NnrOiw5YH
	 Ya9NPOZCPQ/4F2XoUPvJwbDDnkEvaiSOTl7kFJNJIslmUfRR5te+pC/5lTUYZJPXiD
	 EyVc4QDTu7gBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F407C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035239357.9437.4334384703294995416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca78719581c9e92c4430744f174ffbc495d2b9c924ad90cef4a78779054fe2e6
Date: Thu, 19 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750352393
