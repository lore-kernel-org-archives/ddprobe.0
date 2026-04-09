Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1855034753A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775753854; cv=none; b=C6l4uTVyTqkNDui7JQ2DpUiZ2FWDFn7X3RvW1xPp5m76ZZb0fqhxsFBC1PT7jxeafO+yJA/J5pJw6rj+GVvd81DSddkYzDJ60n0ps5PdcGwekuOWhn2ccBCcXW48eQPmH8r8EbU0bZhG1KTOW2D7M3ZAVRyahV9dx6cz2Zi0zds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775753854; c=relaxed/simple;
	bh=uPqF9/qOjnPkEk4eiVb3iFaSSJ8Epbf5fNAyTgJHqos=;
	h=To:Subject:From:Message-Id:Date; b=XuAFJ/vbJZ9Ne69cC58ztmhBG0EYsids6deN+ksoiuw9EakgkQJiXNEPOHSlidFsUACFfb7Dmu7qM+E9Sk3b2BsSnAyZ76kPRwvSlEMW8mxQMFNVYJ0AjKR3Irjn0dTJr95u1OQt8W5f2rWR1b9na9j+5Jpr5Cd8WdvMzMH10RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+O0IkBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+O0IkBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACAEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775753853;
	bh=uPqF9/qOjnPkEk4eiVb3iFaSSJ8Epbf5fNAyTgJHqos=;
	h=To:Subject:From:Date:From;
	b=u+O0IkBDEEUTQH3t1pNN+C4G7KyD8QDQgrWebk3KqUd7R22k3uG1UZoPk8kSea3Ur
	 DU9daws2e7Vnkh0crKBGBjcz2dR4zGsB4KzbmwNH6IdSg4riQWkx9uOCA3IR10AS7F
	 p5VPolVY9ENKSj6XF/QkpEYoJWRkaBkH1GZacgw2dpDJZ7Yf0TeOjGx9IxzvozP1m2
	 T0D4c0SC+TTjIxjCbc9EvTZr3/C+0l+QdarKsokM19q2a9PVPlnqsh6zTksv65D394
	 GmEVpam7ZbfZI7AcJzM3Omf5zU8rW4+m4ehWzmpvmEH4VPOrMW+xnXwAe7BqlwPCxj
	 UgXIYp4j8mGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD20F364A3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575385369.22417.6918526898746322776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8fc16ddf76e7f3cb83bdf5039aaa10f344f51052ccb116baebddc097bcb65c
Date: Thu, 09 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775753853
