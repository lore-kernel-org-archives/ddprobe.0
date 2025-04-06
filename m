Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7EB13DDAA
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743915595; cv=none; b=UEpJA22ly2wDmx5AETr8IDkqVWWLwjlRHky9eEzM8n8TibqGSzLcp1h3qn8hkidORFHv09zJ+bmEaasmnM4XDurTXwKsd3+wJbA1bnkSg2E0FW1Vw5TzjTMgfns3I9kiu/+T4nQUETTZLQE/tGioF0AmD06TEfiy0NONRb02LIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743915595; c=relaxed/simple;
	bh=ZSaJnWYrdvim/KIcANe3P7MFAv4hCDFMSCHI/EwsTlU=;
	h=To:Subject:From:Message-Id:Date; b=a7B4XqXZDyiLjyPzYFtTx4ZS4hbaxLtTWn+b4vO0v+ji8z3H3uwvSTPTbpxMnNPj1MF0LZO2S1YdtcydYLpTl8JKcOcE44e3yhzO3QxxT77Xck8wvDmpzHXa1/h2uYXdStvp0Oz5E+83ShShuLHIpJNN/7Htgaf887S0rSj5nWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1oX50/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1oX50/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1023C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743915593;
	bh=ZSaJnWYrdvim/KIcANe3P7MFAv4hCDFMSCHI/EwsTlU=;
	h=To:Subject:From:Date:From;
	b=D1oX50/0Hwqal8TQeJYFqi9gVswY397j/o2qR6Nj6cshvPql3n22nPLQTxQkxfnWw
	 Bj7yORh/lDDcEgKZIZlmWudtwWBOz67PWozjE2zCGhYoPtQE7vk6nOh6Sz65WvbNwQ
	 xp5Bt+BqU9MTNP30nfeSQwn0tE05ZTEYXuCVPPw9GnflKlmBJtYdh/BeNEdb7v135q
	 fDYnEc+p+h21D4kcerSWPsm2q7yncNR4+R1IiAeN3fUUlqKJsCRzeVFX8MhOAByjOU
	 6gnOJ9Mrg0loYLaEywqO2yIhATm232LhyKdljf5o+Y1eGpZ9q3+NLRXP8gTqzw9UTn
	 rij/98VVIH6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE0C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391559362.15983.7506245873202329558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4396436511d8f7208fb663f2bd280c050f113a68a5f6de18ab76171344e5ad1e
Date: Sun, 06 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743915593
