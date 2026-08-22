Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AC8374A1F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787377234; cv=none; b=aph2/UhTXgq8oviKqE+XWE8MGYMI7z8Qc2Hn7DJWJzPZCv+Zie3Zt0LWPl6vYBBa28md1KpsH8rzlty2tBYT6JgrpF8soD/nGEmQm2Mjfv6zOiLxgFBK2t3bmvfgGZI4c2qJ+INy6r4KGuLixlxS1C0KYTVJbiq9orOJDure2zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787377234; c=relaxed/simple;
	bh=SVDx1WBg11LtI7C0ZcmPwqhhFxtNnYYK3sSomUoWpeQ=;
	h=To:Subject:From:Message-Id:Date; b=doYeAEeC+nvywwwFQCEwmiiuZkKo3eGcMpOBwSDfTM6eHt6Md42CKvzJNQWVRtesDR2uBSRI1hpU1BLbSa4dcU7L5xhExh6Nq3HUeRD/831C8zsLU2LHbIEqpxpbkMWHlugMdxepaQThvseYdDrWJehOpwhj2nUWPZnInxTOfRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9FL/1df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9FL/1df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA54C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787377233;
	bh=SVDx1WBg11LtI7C0ZcmPwqhhFxtNnYYK3sSomUoWpeQ=;
	h=To:Subject:From:Date:From;
	b=k9FL/1dfSsJROo7Tl2OILxF3CZg1Sz9aLIYM9+yJXEyzGiIsttfF3tHmShew40lJV
	 LWYt8OQC+wtxokF4GM+Emu/wjz8RSaNuwEjTn2askBmoQCNuwJCVQtWpaCcb7P4Dbq
	 50XP/xWVXiELX5LjjoTb7gmjPZOXrIpZXr1S0USC5MmSweQ5yJFWhIOP4h3uMuIWV7
	 0mjBKei9R98OTa7WzV05/lpZstsH9KnHWDLO8U4t+HPQm7HXRfY51kI8cQu7XDY3xH
	 fFnWlIDccQvXxaSM1pKcR4XmFrrKcE4n6jFa7Dh4Kpjh423WKco2g+Hx9a1hz8P5/d
	 76VsnnxG/0d4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E0C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737723369.22366.16656745844397220878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8772ff2991b7a133d688a7762cf021aeedff3ea44308eb84f87853166439b3e
Date: Sat, 22 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787377233
