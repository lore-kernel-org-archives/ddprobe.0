Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C4C36F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711412897; cv=none; b=pn16CFv+BWbi2WNU2Nq/ULg7xHQnk93dArPuT54fy6IMMaudOILlAgf4OQz3LJ86xKJjNiyYM9ovfja8bCJODOQxjHBMCEQxFU5l2/q2TOZ2pbiTgKnBHj/yKTJ2gQi3DY8wuwW4gUJkpwwyyhd4ZH5neDYy1lw83xO0cg64rNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711412897; c=relaxed/simple;
	bh=f2oqvI3DUrqW3g8F0WQcrwAlbZmkmiphlo8mAWG+7t0=;
	h=To:Subject:From:Message-Id:Date; b=qM1j2Mi+hqMkPPzdKaeklyntnz0uQ2e5lhqsYq3V76k13smNZ8peHXIgnvIAvA4qozhQoZf20UctHo4cFEW0oalVxOmkjKO3U3gfuxhs12Bv3qW+qqih4/lnpZ7AN32DntTudpbh7h0jAO6pbSv51B4FUMWDrCWqV1fS1ycH3Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQF4cWQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQF4cWQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B5B9C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711412896;
	bh=f2oqvI3DUrqW3g8F0WQcrwAlbZmkmiphlo8mAWG+7t0=;
	h=To:Subject:From:Date:From;
	b=nQF4cWQLiSoP7noL9eJZBEKPq7ShRQ3Z+ykrnpCDf9hgCVIxHYpC5zwmN3dGKz2r2
	 W0b+j3oek6nRiiVIP/31C8yKcneInbB2t6qh24thF4XHMU5PYqcDkBFPhHDc4cojKm
	 3UcBDqAtBcE5378gVkbXvvxeuYfMzef8qaMrSnECOwZ/2AzE4XVKjERu6NOsb4coVD
	 syC7ht73YhUuIYXrBZjSH16Hc55nRFc7YicQjv46rM1GFQ1if+AKJxas5JClJMxfTs
	 U8jokmzPe5CjQc9f0DMvNNpugsxJErOu0D8M6MGA2ymLJQxtZXQshWt2iOieYimk5C
	 pJ9DYNbQUseWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FF19C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171141289645.23926.170889810248101900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c458c2cc9d1fbac833f8491b05c63eadc2a2df4003d52d9ada65d8ac850a7c
Date: Tue, 26 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711412896
