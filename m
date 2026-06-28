Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE9630E827
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782672514; cv=none; b=YMYcpkxlJhrpqli9xjNELSW8csh3bPvSA34z81VVgqf8uQbG7APAQyb6ragBuTj16dXp6wFPt6CYQGCETd4WLHP16qM4yCWxFzBKBAxeeIBRTRt49R2+DjIMzlFHeUlNzKfTiMCMfgFB4AxZC+3OIBf7ZLyxwDOVk5tW72LcMwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782672514; c=relaxed/simple;
	bh=oHtPnyPrVFyBmBUlT7hOOAOAZf7tXi/vLQAb1oa2e/8=;
	h=To:Subject:From:Message-Id:Date; b=JHSZvlJ+VwJUsJq8uKCPS0gRp+mkyUTBDOX6fw/bq+bqlOpyRKwWgW0zzqer2/uLnDTs6ZREO0Z0dBTA1KjZ4MK3S86/MoIIlexz39OyjJTgMocjSeNM1oRq28kaQ9pT/j7CrTpBVxhhhCd0HDYhuJlekNTwI4QYNTeTi1l1GS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhjFOoQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhjFOoQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E70C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782672513;
	bh=oHtPnyPrVFyBmBUlT7hOOAOAZf7tXi/vLQAb1oa2e/8=;
	h=To:Subject:From:Date:From;
	b=qhjFOoQmx7GootQDRunTfKV5O7+Dslwx1k0dUZVpq34TbantdJovNKFjyibcCMn5W
	 ZtkHf1iMnncsCMclQFQNJUJA8ehR1SkiTS86ZX7NdeSQf+QfPQYN1UgjgkXwCDcGOS
	 hDFkTf8s/ufV982Wu1hf9UhRadBpkjvQ7wttYNJncSGSY56CCfukl9q0aX0eKlr4o+
	 3AsYv1c1F4x9CcvXtvUuxu75aMTf/m0Ig+T2UVkcwrsjU4nDydKG2rAzO4ncbHRWrp
	 6Mb9WB0whLv2b5Jk8RHHqstMP5Q46aKMYw5VIfTOOBvFJwaiGBozY/xvLq7TzkHx6Y
	 3wiGRMSNjlkxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8418C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267251373.2497.6885355099851716932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7a372623b911ec77e4c8dce29ea2b0c396b12a2bdf35bc292767821cc95ec5
Date: Sun, 28 Jun 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782672513
