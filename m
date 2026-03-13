Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C5F387377
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392694; cv=none; b=JzV6UuvZCMlqrLeFlRrumkiwImTuZIl82ftqdCMW5zInFJMJdeggI8QLkPZMGCQqonRFKiAxKfJF4dL7NvEC7d9qHYOgrrpuDsO5lxvCbFdN/pQNLCpfZ1f0GjZf0TJXKiNfZHjTOre4ioTB/83sroK73a37QzKlwKpcTT+WVwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392694; c=relaxed/simple;
	bh=Ysqv0E++kRnU8jqqGxXjlQdBys6jKzhZ6kozAmZTTvo=;
	h=To:Subject:From:Message-Id:Date; b=VbmFRNQN4xb/OTT6pKxphiFMB3lN3XPASIJYk+UwNtA9PqsfzAbPVxVs1e01aemJFhnlWZY02T3Ym0U/iH8yQqHJcEaFkdW87CoJddIhPw9aRgyv4EV08a1iDIb7dgA9SuGwyn+STBlUWqEqPUio5PRmk44Gp9zAaWOzhI3q67A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeDZjOxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeDZjOxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A13C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773392693;
	bh=Ysqv0E++kRnU8jqqGxXjlQdBys6jKzhZ6kozAmZTTvo=;
	h=To:Subject:From:Date:From;
	b=IeDZjOxJWA7aYnJwSf49vQ2PdMT6umHXpn0TZUhhHhipE8RTSw8j+056OEJTiEDid
	 /DZHk4OxwsodVk5xETZWPpfbO6mho6idGDcg3LBmT0Zx6zfLRK8fSl/CH5y6RIpg8w
	 nERJJ7fEarD4z0O4cQYh4PpODmhoBCCceNLmC2JAt4g+DfpNRzKN0DSrM4SAfEzkyS
	 CRTuDxqFwEO65kpWlDybYngnLUJLQlVqKY170IvZ79Be3AGO1MfocQAVCOi9ZVzXPO
	 kbTzVo6f96UyqJgsnzDQRaOPP1Ohs+UsJpDlDKvAQZQhFj5H55PSOW8eKHFRd3egJw
	 PZLDeggXKs0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F270105F781
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339269357.28240.13992785973258130299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7cc3c2c87634210921bdf252f23708c46e03885754ecbb19feffd468712ab5
Date: Fri, 13 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773392693
