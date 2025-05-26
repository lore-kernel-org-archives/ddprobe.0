Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372B2CCDE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748294994; cv=none; b=pPOVG3TI+DotXW+gPNz1JJe4dZqnRJ6optMOl/SkssWofilgqf9j80Ql73vVPBs8KsZ7byJ07KXi6zWAd2SSpksSRXnX3Y/YtDamDIg3goiCmP4UE8i6KtgpA0ujQJ97QgCPD9iO0I3ZAFRAE7bQcEhm/eCcQpFgCuQjD0rCyvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748294994; c=relaxed/simple;
	bh=oF3C2WSLlSKCryhstSmYuZbcQEzNRZjFXZloIseK5Ls=;
	h=To:Subject:From:Message-Id:Date; b=Bb6DuDZHMxh74NsZg3nuleZxqg6xJnWBaZyVbwfqt385ohfNo6lnzDMTlSjLEWojaQ3VddcbvxEKviz0w7akexcTwnnQT8kqyidWui2gWO343iKZlbVjAhntk7AnREm515Jh9nRD4+lln0k9K0zgRgRb1EBCH+FV8sw+mKC3fzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UY+E3l0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UY+E3l0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748294993;
	bh=oF3C2WSLlSKCryhstSmYuZbcQEzNRZjFXZloIseK5Ls=;
	h=To:Subject:From:Date:From;
	b=UY+E3l0DxLBPheoZ+9V2qxRnbhG2K/XCYHvE+7yO6RTCdsKNN0ApH84ZOU1HIeaip
	 blZbTDOF//35p8zeVyCn5PASpBMi1Ak+YJ/++rp7R+XqzKT7km5uHcOxWY39qOg0Ns
	 wojCFx3HGtoVk9D6cWPg528y+0njnJVla9RVrCKBf5Enw//3fp9us0btzfy7P8jS0s
	 V9dC+IYOTU5W2mA9WSWgcA18gYtECv6Vy3alWCdl+/EKJ5N9mU4+pJII/t/s7t2SN7
	 ZKjlj0DWzs5qvZXbmRlFG27nQfRoYVhYTkqkAR4IYA2Hlc59hsy3KCSK9ekG8PKlqL
	 lEewpEit2HIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525CC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829499358.26032.14154075206678473965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8752b569bc01e531e32c9f8b9a9f0aab41cab27a6fce545ca9b4df8bec2f924
Date: Mon, 26 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748294993
