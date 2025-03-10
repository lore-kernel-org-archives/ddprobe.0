Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6302222A3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741596534; cv=none; b=fbYAgFLLc9cbei9qoRSrze70+1n91w+ziiaoHUq7ZAwuHwH84zkizCrORhrtP9iMvYlOO0tDWhPQhfxv4/XCssFJs+e5aCQ/8uwFm4R1gM3iUsGh5/yIjHGJN3xTMMMcPpBG6C7JqPAqWF3rju90CQkjqkv/JTmdPsC+gwZetEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741596534; c=relaxed/simple;
	bh=S8savO7MUkdEh1wROI7iyc6lgxk8XPQnV4iy8ktFwRk=;
	h=To:Subject:From:Message-Id:Date; b=VMgzsAfTYWctMhdN8P6ZxW8Ctq2O0xnvvF1yRirI4JTJjQO3YZg7OubB0Sw6GU3qlI74M9/6xsTMZEThrz0MPFZjdyemYh6vek6oalp9dKKfB5UcxgaF2Alrn/4wUXTjCs9Q1/NeecurnEd3EeD5DA43AHOO0isYFglcjcQ2CRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fxm9A3sC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fxm9A3sC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE9EC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741596533;
	bh=S8savO7MUkdEh1wROI7iyc6lgxk8XPQnV4iy8ktFwRk=;
	h=To:Subject:From:Date:From;
	b=Fxm9A3sCCdjyAEuUGT8K1A4Je2VV8PNgScTFtMmOE/BUqWcUfpt69wQn8792abuLn
	 zjUL7yQi0CqgpglDDVuZf3pCxnOeDHsn64AyEucMDTTt7JfDTwX+p7jRdUXggLIWGO
	 XiVlKIcDaIF8Nl2YUvD42PpPBc1MeHsYnZh6X06tR7M0Mf8Q5x3CrYlFmIUA3x88Py
	 P0TYrAw4MWxJaQvW0GeTJ2TNofMpcjGEF/bdEyPLpoR51cb/kL47XjRgEwXxApm4c1
	 lWvonTaaTlHXZWsvozvQkhfvX9d1jTL45Cac1SJVaSvMqcyNtoD+F4AbFGeYexTCdM
	 3qoVV3onsjHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFE4C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159653362.17961.1853060015531048778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b8641ac139272c215f40cc2643b2c84c681e30e2109f058028f77cf9722c55
Date: Mon, 10 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741596533
