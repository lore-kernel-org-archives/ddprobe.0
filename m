Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54DF36B
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764429173; cv=none; b=gTut+dTSZnQ9ZR67p2GoyiLlDKygy1J0a5kY2IDsQB2gwrRoZmabCgDniY9zBfsViP4VmJS6eigmVeG6WuOBfl4hmJOHlKU6e5g1rKxZVoML4jmqnRxXl65I/nstVJM/B9TB1sw+YHZuR17+NiWjWls6dI5FVtBH40Yj1df3YAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764429173; c=relaxed/simple;
	bh=MKJ8waSJOnpaq/f77d89r7jOL4xQUa26VbMdVo8O07s=;
	h=To:Subject:From:Message-Id:Date; b=goUCoOn2PTf+5EBFOhv4JUoXIv9IaBmcvETtRQAuKeiUUnUS2i2e+lj9ngBXEs0oZzf+0sqrqM/7EwP3lhtefmmaPeC7Fl9pd6id7+DQKM0jbr/HCXbfhjIYw3ghrpIAWT1HVCuOOrg2rpZzJxCd9L33ddI/Okv9VtOxDVAVAP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=je5GXwRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="je5GXwRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2350C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764429173;
	bh=MKJ8waSJOnpaq/f77d89r7jOL4xQUa26VbMdVo8O07s=;
	h=To:Subject:From:Date:From;
	b=je5GXwRDpufZHmRRH5z/2ectc152Oh2Jsy4Xbdr6OTaLbx1Xzc+T9GzCJMlZ4OZAB
	 mHZOl0b7rHrxxrGTbA7sjsy6E1gLg5BYV+T1k7pWwxULLijg/FX1GxqhDPmGvhoFDZ
	 CZ4vu5JD8EwYpdxXIcQAQdkckwk7a0GyE/ojvM8niGr6T1XmYSGLi7QLHyeaEJ0kDA
	 RiUextRD8x8YvO+kTmvQnjc6Cr67msK7MvrPjSp2SG4A3Knct72k16m8PeHDHIbf6v
	 9rYZSL58IxM+MRPgKnNKu6h4mEkkC4XsRWD7qxiJhyV6+Hf2CyTq1fCqPfe7E3iww5
	 Rdao/60K8LemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90333CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442917358.18778.7182302537096222823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8b86a11214fd053fd7f347e04f4757978ac66a04fa6ace68f4d17f33a6d006
Date: Sat, 29 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764429173
