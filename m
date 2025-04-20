Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C79101E6
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745178596; cv=none; b=fnyhNwGRxfn0rHUxrRXC538nRFQRtTX4a9lx0pKDH3/sDdHigSYaJqd0G05PK7z4F3HiNXw5Q4VvY2rSgcItx5UR3t8JllqHsaPsU/jSStDxGS6T3+PzxcGBzwCPkpBwXqlDMVDDG44q7XKxYOCKoEpTZWK9XkPLAwh6lInAszA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745178596; c=relaxed/simple;
	bh=2Hk6CVjpNfDktFS58tBHp4qmfLiQKX+iEftwYovITRQ=;
	h=To:Subject:From:Message-Id:Date; b=qk76D9hzvd8b4nsGtQsj+iE7XdpbP1hoRa5BvMhaoXtr6kc0LW4q2Jl51CSbVtI8/hYvRYfjoOev0kTrsIq7YFLz5MZGXK45RrHzmE37IMTylMnyxYZPj2aAZ+cFED5jPGko1alFLqsK9FGZ1f6XXeOb0KBzfeXJyjAZWHpV7SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iks4IzP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iks4IzP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4A7C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745178593;
	bh=2Hk6CVjpNfDktFS58tBHp4qmfLiQKX+iEftwYovITRQ=;
	h=To:Subject:From:Date:From;
	b=iks4IzP+mjBaXcungSdAokDKGFLp4hm+r42Baeaf9ypOgP9gxDwdpPq6E7iIHajYq
	 tqrCyqFGfpRvPEMq4tfBvjd/c4wtta0sjWdYbkYrUIwiUJ0EwJhex5TbhqiM7XZRap
	 EG6WFlx9HTzJ4naOsrAsLtrRjX/gqO3etKzMj91ni26smZ9EpPm4zJfCeeZQDNYXTT
	 PFdNxvwt43YhVJK2dRhPwD+30rDFmPusPPPVLQpvbjzcMi922uxLFJANIY2vwKItg+
	 hecQYmD4RjBDVuYcT/qawViIOUVLP3MuOJhpLnLrE8ABSZ6KwpINvxDirV0HmARpm1
	 +ZrgGfY3/HVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E309C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517859363.11884.13089935165288116188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab19b5fb9830ab36b74418b64bf7860bd7dfc4b141380a716497b94588a2260
Date: Sun, 20 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745178593
