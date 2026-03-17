Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EC73932D5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773736494; cv=none; b=Rbdf5sUr8+wYQ/GGQfB5CJMY10QY+hIZ+Sm/cyyfdCKKDFlji643Baxm4sfIaqPqy1pmVh6BRcmUaG8ksdRVrB4LPL5mtoEzNJhpDLZYnPPUwITl3a41QwKb9vhCeFP1rsSiBovSJ+JuK0sz/0f6BaqiS1o2D8MN6GFuFej/AZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773736494; c=relaxed/simple;
	bh=MK4L/z1WszVVYv0teHF2aXw2CRRsMUIwSrhaPHnRLjw=;
	h=To:Subject:From:Message-Id:Date; b=AzdBcvLRoGu228rWft523BpfvpfkK0XoWrO8XUSHu2QXBRaNUC5FkHdFentuRYbhrFDwinYX7my5Jobnt39+PKDQ5eYps6ytbgOiUBTeQEcWZSP3QI7ZE3H2rOHaN8dkW5d79mrg2x8LuOBwkuAXxybKVJrfbhcuwEV/h3iWYY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJ8YNwIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJ8YNwIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D47BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773736493;
	bh=MK4L/z1WszVVYv0teHF2aXw2CRRsMUIwSrhaPHnRLjw=;
	h=To:Subject:From:Date:From;
	b=EJ8YNwIzsbQEGtwk+/i7YbQjUDLwCaCjRv7R+Zmemld/BtmhAZWcC+qan+WVp6XXA
	 WIBclddr/whDLy8anhIV+pboPe9yvqEMe3erLbkC8TncgYTQXnaS2mayLfTuu/naP5
	 GCKZLUx130KtPSOSLstJx0E5k3/LE6qwrAP50YgJxif3QY/wO53TTOUJDO4wgowCyV
	 dnGoHRGt6Lmw45DR3QuJFl7Mf+5QKv1f5YRITIqgIwBD4F0RqEDYRE7WRku2oA/y2p
	 +xl55pQjhi/dKdWcyUww/TaDDFxI7fbgVl6fFtCZC2GoGLSJCQ80lENrBduzrnt3CW
	 nR/yJoRz1JZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F6F3380C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373649357.24978.2850185293947572853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0f7a076faf6f569aedf8af8b2f750e7efa3a1679cb765c623e6f1470b0e8c7
Date: Tue, 17 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773736493
