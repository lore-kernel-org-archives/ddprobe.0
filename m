Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442171DDC18
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750218594; cv=none; b=I2u71P3YAIlABCmEfHTCqFbwt2Zgw90ABtasSr2w0opfqEo9leSkd4H0Ore57MC77X5XNR5Ik2Dpmm1zwMlF7enDc555vrJ0M38BqVDGUg1UTQJnSNiDNwPM6ePCWbIudnNO36yUc4QPoSTnqonPf3amckYEXDsgQ+luS0dZ6+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750218594; c=relaxed/simple;
	bh=kDtZ4o2wg9Eh2kT3yqP218Lhb5nbZYPtdJlmTgXUX/8=;
	h=To:Subject:From:Message-Id:Date; b=VU4deNXl4zGXaxh6wPAK6Aus0wWBgE14OMxp67zTlJHRKwn3sRRgEfrupew5FZ+7fzlbYabymyxG2Hzn4hN9nDq2sPdHTjEyoIp4FJuekzhmyDB+WK7zLlnepMZ7bMRKXQSaHs7wTperMQBAkNfMFy9caSZa2foZLoAkqv/Pzso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrMnf/jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrMnf/jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3321C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750218593;
	bh=kDtZ4o2wg9Eh2kT3yqP218Lhb5nbZYPtdJlmTgXUX/8=;
	h=To:Subject:From:Date:From;
	b=nrMnf/jlAC2s2Lw5I+HUKu/XKEI8w3VS3VJQWS/hNLg3brZpWuWbUDFjiWdi1monH
	 NECBRUvah6Qic5yIKTrls1PUbb0XMUgMfhKg6J9qXb7pLDUfrTzkupcb1pVhh+EuRr
	 E8hUjybL4j2sdxVnJtLmxzMIQJf1ZH8ljlj6YU8ZQETy847mT3ou8gR1ivgEvdPTpy
	 +D1/d/Anw19wZGBg0AlLjfxdtmhibzePMhnRKRj5csWtTa6rVuSb9uwsi202n8kGWZ
	 iejxRMoANeVFXtEfVO8qhcswW/mJL26pi3fKsQGXHs4FAch0Qg7qFJ0yA1bh09VFK9
	 Lh6iC6c+IjQTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC02C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021859357.4957.6221957244363321746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815b45975e38edcdd731759a32ec3710d4890209d4d9df9c02583da913befb75
Date: Wed, 18 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750218593
