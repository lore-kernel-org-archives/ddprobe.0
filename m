Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB19156C6A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772516694; cv=none; b=jnIBbgNhNTG2ga9LbEbCm2/0Tb33Vs8iBCaHRUyBZn4mhYHyz3QMEfjO59Bbg3sHUDN0donn+8qcrYwlXDKWEF6P9ptal5oNRGbDTGtY/9st1NTI3PmvrY2x4HiHMrguedKeigrGfQKrxHLKhr8x6ibxQnHjYCvqdEp7wHSoyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772516694; c=relaxed/simple;
	bh=6dOW/SDr5pdn9Y/PJ8hcub8p239XGAtURcjITcvhFmg=;
	h=To:Subject:From:Message-Id:Date; b=P6HymnCJLR9H9affSYWhhGN9g7w38/MKqnvoNd6KA8aagyo7+xYUhZ0zFTkkM/eFDw8QdhE8df+ySdFfXOmBZu5PzjW4cVJBhXZbDRC1nuzz3WyTYsb+kD0Ue/1Bq9xfvCmBFvQ29PO75blMJ7kymFHdbcWRfRvNVCcK9fTu9N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGi7q4wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGi7q4wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15A9C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772516693;
	bh=6dOW/SDr5pdn9Y/PJ8hcub8p239XGAtURcjITcvhFmg=;
	h=To:Subject:From:Date:From;
	b=hGi7q4wFUBaArwpxv6fYSAdR/cy9TivUt+WFdgTrno0XzlMBVX9D9Ptolh5oAybzK
	 yA/AK2bTNHviJ0MGM+rGuzEPjkO19W6f2mWGaTkaz9BGmnIpRyP21nbCMEdDsBOckp
	 OBchekDYDg5+aQ1CWYK4dvRrRwLN+3Z7Kj6ke0O/EQWc6LrUu8sQG4YgO7hM9DPDYe
	 o0X/RDO4JeSoQ9vMl5PqlU1fzS02O2oE9ynQEg5+GLXUhVL1fFaOVwpa4Gpwl4MTHY
	 7eSQoPU7AiUp+MJ6vBCvKoRao7g6sYRbGcdEH1IL9kSwEIfKuKZrEKYQq6Hlowln7m
	 AFJh+z3fhH2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CDBE67A69
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251669359.4523.9620371276786369840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc61e04ead27b35f094ff213cbdb2455a988b004ff27c14c8e5f936042e21d29
Date: Tue, 03 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772516693
