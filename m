Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D704227E93
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749622794; cv=none; b=s7Q6hNgJvxZt8RycrG5KMJh7KAXW10NWBZ3IrlwqDyHUZT4G3ID3j6xqoagvLFAxSZSspSGW+Lx4eMxQuJFSbIXCxE9+uaU3PpZpTFWK1lnYcQxO3L4xfWXwhJoG9YrCSG1fGNWa5fnosntUGdobnL1zxcqfE/XoeO2udANEv1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749622794; c=relaxed/simple;
	bh=QDOxsTnv88UMRA93JS8UhLEGILBJiAR15VDIJ7aFSsA=;
	h=To:Subject:From:Message-Id:Date; b=WD5DtB/30UOzJJ3+E7pfjpryndCuT3r8dJaC+hpF8ZzECw0Zxw8OhL+paKWniBbPEo+0OSV6OlsvZ54pPatvWFUJUJw2MYYzy54ssgRSE6YsQZ/2KXimmxGDC2Pg0oBMoHs2f9GWejCc2fuV/zGzdRwxg1vUxoWONLeYCHNrQWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW6dIEih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW6dIEih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7FC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749622793;
	bh=QDOxsTnv88UMRA93JS8UhLEGILBJiAR15VDIJ7aFSsA=;
	h=To:Subject:From:Date:From;
	b=jW6dIEihNwb40CZ9sW7FKZQWfdDjJOKsvny7Jg5k3SMlmse0tWGHntte6dS44EB8j
	 qyVjCLohCEzpklLiAXwHKvmqX+fnlQ62a0sRNmQB9dSUxzWQSqcsfOJL8I7/JknGZM
	 /vq9mvzGVffLCzo3nco1nj4FBPYlFS8J+65uLpQyY2/NEHMrwD4joGoJu0VAZ92fxO
	 UpoBkvoyJmg719/vDkfuY0ibof1T8jP0G09+UArQSav+m/MadqsndQw8hlDjM7mFH4
	 ljxB2Jux2zW/S6PJ10vW/F9PXetyigruBiZmu5PQ9WNQgTR3OKYY/mPviWf9n99TxT
	 CCNSt6pyO2Cmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125AC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962279358.8917.653391929272248515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8700f1e95d7cabad9f558552c7eebf9a511b360f4e2e75053dec1da19781cfd2
Date: Wed, 11 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749622793
