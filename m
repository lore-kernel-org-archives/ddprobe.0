Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7492D84A5B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719869723; cv=none; b=u09FHvT0ALwB/O6Gri7AkveNeynYwf9iBCZKrpdqz4vV2F0t4jr5jo1TH+fUUb1J29gTDGrmODNcBaxJkwULmh6RKw7HRjlxmLahEZt9Yz0hU04nOZ7l99MkbEknSU32hJnHXn8uLTGnDkoywqdKvbNIh4VWpvD+SHJ/mXCZYKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719869723; c=relaxed/simple;
	bh=h05L9oORewajydMhbhhWsixO+zI/fsKCY3H0QYOW6Mc=;
	h=To:Subject:From:Message-Id:Date; b=BClJzN3W7FfCvnogDJg+3T5T8IT1V5folFiJ5oohy1ek9RrPunnUryxbhO776V4rl85KjMTuQXVrrxK8ABEIASuZ3gUjIMfwmMZS3XZc8eORKhTIyPMmBE/nh/wZXnk5qcD8nKKsmUFZUWHMkUen4Q1rkRZXEGX+YBehCFQAels=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiqaiw0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiqaiw0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77FFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719869722;
	bh=h05L9oORewajydMhbhhWsixO+zI/fsKCY3H0QYOW6Mc=;
	h=To:Subject:From:Date:From;
	b=kiqaiw0RmON1ZBhHg2BGdxGCcCiehSYT5R6QOBYGo1rUenOCwVU5XE6wHgIMYhVYz
	 4owPY9iavRrDd6/8IA+bVbFBo6WbiCaNqJpge21+S8miZtXMrg2BddYrOKnXW70vIX
	 sS1XyYKuAYR8B2rpU+aR/NXjAD/SkflstZp3OLj6FvPvRuQ2EZhh2QMnyPlDnvtujG
	 N41VKy9cm6tGB7sJL04rV+RPe1OirI1/igpNQOm9KcOEnTkTy2OzjIGKWnNnMgGYRk
	 2gurHcLJV0hBtXYg3Y5QFNWUY4lWRHc+lc2K57z9DSKdHLTqqqevtEGsacpssO2iKg
	 3MMZaVCAJKjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C305CC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986972279.3338.530874415542534705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3f37e636a8840d605be096fd0ff771c92714afa5411d7303007b2a85799f8a
Date: Mon, 01 Jul 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719869722
