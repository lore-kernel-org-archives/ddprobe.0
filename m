Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167988287E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765146174; cv=none; b=MEpaWKL+tpxQuwLDWuOq7spN7FJ10UvNRHW0lyvmuH7Rv/zBSZlRiyYrACPnzXeyM2BrIx/YL6lUXrpWlub0wgiA+XlbVovhSkIQE1PkHsdQPz20Cl+iWFCu1FMkxxjquTec75rAeqnLfFxTKKRhCg6BRWhavqBWNSYGAv88Sog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765146174; c=relaxed/simple;
	bh=jFIoexdvANROBOhRMuTZz+tJemLg2FoT2U0cjUgFcxE=;
	h=To:Subject:From:Message-Id:Date; b=foW8rDsgwlSOqQEl+rIcT92PHgrkumPWiCi6Q6gQBbhlKJQoMMerKL+0bU+Nw7MUQBKTQo5nda2NtUELXDJarULQZ6rNhXSILnuNJFrbFQzbCZIJaTg9RlfEWChnbGEo5BLpxTdLQf4F+Jje4lqGhwQsvNjZKAR6lUsNdegQFx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAL5Omar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAL5Omar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC55C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765146173;
	bh=jFIoexdvANROBOhRMuTZz+tJemLg2FoT2U0cjUgFcxE=;
	h=To:Subject:From:Date:From;
	b=OAL5OmaroPq2L7ttJhF+UNGf2IpNooQCjma1/3e7F+SWO53X8VkDrQmkQ0MzM4v5/
	 bkRmtvI8QOpDwLUmGzkUM5N8S9sTO+SprlcQkbrNw5RiKpFlHB6uHs5DkJ0fM2XvfD
	 YVLcYEjFXGyLRYkrQokQiKKFhXUGX2r6aw8u6HUXdqpANHF5nRzXXjyEAxvTO7hFvb
	 MaUhjK0d1/ykajapqPGAEtKZpArLEBg+afxaxqUR1ZOw7ld2EuK7onh8P6loI2KBVC
	 Bp0uZHjoPjVbLPMW5eSA4w9W2k097EH1J0CoEyPzfJcyjY0/uFSeJeTFBJhwWWO8DW
	 k8lGp0pQy8MvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514617360.21618.4136814644927614403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef62414b3bfe1a7d66cc75553c8d8bee940e73f39479cab8cc55049142099053
Date: Sun, 07 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765146173
