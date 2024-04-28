Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CA173182
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714324943; cv=none; b=Koo0QXbKxDODnpzZa3zzoysEfzZoGWVq2LWeBykCIb2Z3dPE3lSSVyE3QD6C2i4ZctGToNt8Irt7V3fYgWeQMnAruNJf6XwbmgcSKgqKsPT2v5lPRmNJhlLtOIKKfAjYw5K/Bk7hCpYOSG0+nQZ3qLc4uMlPt5B3omPCHKwd2yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714324943; c=relaxed/simple;
	bh=/1mxWiCpI2M0GGJi7cYBvr1edH/kvMhRbKAM5mvD7J8=;
	h=To:Subject:From:Message-Id:Date; b=WI5FDcd0kEcaqCvv1+LjpUFdnYpmA+qYUDeO4VCcD5CMAvR7Qevt+s7NTRT5CkgYknjOQmJ/paw/rdHiy8ifcQl3ZOUZAUWruO4tmjnseXqrD/2LQjRbebaaYfzc3brnBKCnXWiZR6YxK+gZFrXMP0Uk75m2jgvsFDZ/ZsDZ7tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0vWRJ7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0vWRJ7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3591C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714324942;
	bh=/1mxWiCpI2M0GGJi7cYBvr1edH/kvMhRbKAM5mvD7J8=;
	h=To:Subject:From:Date:From;
	b=h0vWRJ7EZH/5SEnZzRAa6CMU3hvlTprt55iEtr74keMpGb2bq8aARbG0aeXJ3antS
	 i7p1UWbJX5YiXg5J+SeK4cwPkgx8qxcDwFeKWPvMwSjf7QMtHuroUNBi7xJ8ea9fmz
	 C57usnQA4oTpb2vTWEZ6qsT/jQczrAT8V7Ki3GbpUusdTEfm+BEsGTAFkx6c+DcNMs
	 EeOwJNefDaurb2FRQnjJA3Xyu6P6Ve3/DINu7/6SC64ux9jgyELXaNSDS55PiRYM1s
	 3X/Zbns/3kjimPRkduDjYBdT7bJSApZCc9BfFWND40wsQEBN8M4tMALy4bNKAB0t2i
	 XsENtj7Po5ViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B18C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432494281.16029.12365408014851897805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd973dd1f055d85790f3e45315abb25a66ab0f043d141c588ad3bde577638b4d
Date: Sun, 28 Apr 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714324942
