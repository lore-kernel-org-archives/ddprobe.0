Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E52A3002A0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786176034; cv=none; b=hJkVyZYgN3YwEGvblOzNfU8LyVsgVoa/H3C+nmTJpKekXYG6zBYUPGcccxzZhwEUi9k7XGaU9ASmtZE109+eLL56Mtgfy5yG2FJlNvMPjgJrUFH8+1ufvEOJ4vyycnOh2uYoVFz1bleWvBYO6zmBxuL1Zfgy+Wg9aQPWZOErvxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786176034; c=relaxed/simple;
	bh=6G0pphnIm31SlcEcfb0NC65pVVBi5D3UO+P/XEmyglc=;
	h=To:Subject:From:Message-Id:Date; b=r5M1ZaNKCNzvuPW/us67QlGLKTuAQDcx6svNCNwQBNz36JzkajuIhRHb6iPrUg/bYSWKaHwRBOA0EPqA8neFdy4Vkv0/yDdE7ELXB/jK7f9d4ss9T1q7P1+2NGAFx/Su3ht82P+m7OsTAkV0nNPZj0s8VUG0/nwAXrH1J3VAf4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENl6TpRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENl6TpRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2D7C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786176033;
	bh=6G0pphnIm31SlcEcfb0NC65pVVBi5D3UO+P/XEmyglc=;
	h=To:Subject:From:Date:From;
	b=ENl6TpRBo3qSS9wJjQHl5YZqCMf99+J3bBlHa/Nwo5CpQagdM7rIsiErrZBRr8DKk
	 aF33zdsPurAiSeaJG3zwDPVjMzgfxSj2G1ztwamJu9kqBnJkJKMSt6EWHSxk9Xiw3i
	 U+Sq7jUIyzWOLda0OcbAuTDrf6/6UKInlShwNovf/5c6iMOsZMTokrljJCnoxqGTJO
	 2jcaZZy9w6ohAd7Z8owAr8V6UFH0DqmqdxwTEf6FB22JJT7VeOBYp+mAoICaNgZFXd
	 +fqyIN5DOVXed3oUI0p7xtUoQhjN84DA0S0LwTv8mejxGYLUpUj90/PBk4BLeV+e67
	 4kec2gKdz3CKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93CCC5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617603371.23803.12070695729415000153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e630783b0c26eb1064a5286ebf041ba581915949d0db81bfd8cfe69a83a542
Date: Sat, 08 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786176033
