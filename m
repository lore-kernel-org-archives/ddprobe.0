Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490C4313E15
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845594; cv=none; b=Awfy2gfmj+c7fY5nLOOKwj+cRxSIsmCD1I6QIpxTyOGXTQqzLCcYylTfe9TBU/SOZIudNUKQxiGkFXYmhot8/aSVYNsupIYDb6zTHXyOLibLxnG6BooTTS6Pwl9fgYWBU/PavyEKZJYmIL/wMGK/XeacVhJmzVHUJbUyL996SRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845594; c=relaxed/simple;
	bh=k7/J63qNi8iaj8YBstUpwG7kYTN4pObJjTjH+663tHk=;
	h=To:Subject:From:Message-Id:Date; b=ZYO/H8XKppU4SC22D6MNGdafHGlSfppf/aaKCCWC7+AMBzmDQsHkSkcGKKMpGxT40xCSg94UowlVXj3ifyXgwD9Va6Llp6vZ6fRQC9LOAlt0Ogp/uAhm7Hxc+NrpYNPbqfDYW0l2QIYPnvQul7McYDt/L3HWP0QMETbIvZwUxLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0QcF3qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0QcF3qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC98CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762845593;
	bh=k7/J63qNi8iaj8YBstUpwG7kYTN4pObJjTjH+663tHk=;
	h=To:Subject:From:Date:From;
	b=q0QcF3qv+fZC8wj4lfcewZPwPIHTVQxzIGDkGQdnA7K1MoRkOEPkGw0scD8S/wWL8
	 fUDD6s6IEXGMvULHb5nNNIzCJBCEh//xXnQiF1eVaeNwzvzPyi98yH38OBDDYJP46T
	 5l8S/JIxiGeu2Zis7Tp1mN00+wMDyFjiyaFm5k2z1BgwnxQexAnLqxGIaFc9F4xTEK
	 1pzDy5ZiO3BdEtoxP3M/HgnNjcjIX4EDjFytqxWkFNFgUGhDELYLAdw+vmGuY1f7C2
	 zCOf6ShrEYFvUyAmjNdJwudHNbnpb9Mj46Ll0HdY/C1hp5iAEQsHsF0upxumUN/Lkl
	 /749qaiPYFEaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A300BCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284559365.24481.6923935988005851820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f530019ddf3a5da836835b9264bbbde009103fbba09ed3ab381683b89759b9d0
Date: Tue, 11 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762845593
