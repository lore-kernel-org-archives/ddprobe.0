Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359C0237163
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756704594; cv=none; b=OJmhumNedC7xhQQ6hQaeYbM7Wo2ojinjuZCzyVybmwcoFlyCqinmz1nFnD+mwwHVCLxlGzuSptZ8KBOa+rr6s/2u2cyRAYeL9nGZwf59g+VZ1IJWvzKXXDRWZyK386J5OxlJBTlKb7cuR2/A7QSS8aCi/85XcPQ0nH+/VmXYWiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756704594; c=relaxed/simple;
	bh=gdlCo7KMmsHbmV4ojYCQFnpvlqdrmbjBx6k8YWfzjFM=;
	h=To:Subject:From:Message-Id:Date; b=qLSXDtLzim8Piw8RhCHyzTbKtXzpLYF+fD+V+Vwz3u2KFIQFdtv8OHI6V8rngSSx8zTMwf4p1KVpV3EwFsjpLxUiaNfxL8SKkj3e9FeoOL/PqE6a0T0xnirLl8KfhMC4sr6pZP9KcbZqcdC7mbzrPXdw/WrUeh1C47YG1ipAHZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewwurc3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewwurc3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756704593;
	bh=gdlCo7KMmsHbmV4ojYCQFnpvlqdrmbjBx6k8YWfzjFM=;
	h=To:Subject:From:Date:From;
	b=ewwurc3/Wwd3aSwcuM7aQsls0ru5lOzIrJ/uC9B8AKDhwmq9aeOUpCjFbOd2sOwSm
	 Ia4SMuyFYDWhzWG0SctwF+0m0/qKFZkgGj/czJjnK3jN8pggnIvD2YbwEVQwBLm6aS
	 F3WFynF7kBFYvrSBPAhtKoJcjtMPBG0HIUJGsSGxhymxxrWQDAOKaoF6BOv1ryea50
	 Lvv101GfLwGhlHKoI5dQNhxYFt51Ct/h3Rh42LjivXS0KRXZ50lG8KMBl94ggqEX3A
	 gSXDomhSHGWSw0gGcEF5WegZ6Urywj7NB71FaXcpIYiVP0aZzKNDKl4v7EzS4nN2Ju
	 OxW2btTvAc8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F5CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670459357.12396.13294949335228689104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c2173722bc4f9820eae1a77b6c346fba1b4c789b8258602e13dec12f411b60
Date: Mon, 01 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756704593
