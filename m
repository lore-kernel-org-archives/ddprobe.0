Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B3D1E869
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719174743; cv=none; b=tXiXjvTCjgGCY5HwF94MhRoF76obdG+wp0Nbql8YVkYvHmN+cXj+6WJQ6iuoRGlHIdes5eBbTMUw5LxMMCOCAQv9qTYMv7wmW7CbD1aWtMkvtjAP5KYItbpup/Qz4dug6T8r8g81idHN32Eqvh1V14cmJxYPJt1GEUlBZWIrhFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719174743; c=relaxed/simple;
	bh=oaEkq7HdVdjzttqjRRnw9veKBr2mcsseY0PAaUC3ECI=;
	h=To:Subject:From:Message-Id:Date; b=FJUHT+FAqJu3AXxlyHBu1RXbcbgDYRhefR1biTD6yZtaWq0jTNmtddsnEJYzWRyRyTdcEUHX3rWT0gX3KTUOJzEk7uXW94vRGbxlhb2iTW7IF1IbTnmy+MvJOKrk0UZRjIQzE6oeacfVklmDNRVQmCoFtw1F8tZmd64hyZ/tXjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahd5Iczz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahd5Iczz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719174742;
	bh=oaEkq7HdVdjzttqjRRnw9veKBr2mcsseY0PAaUC3ECI=;
	h=To:Subject:From:Date:From;
	b=Ahd5Iczzvx35JwKqF5ggBtMKxuMKT0EVuZczmkjBpmFi166i6VjFIqzVnRleDW4Be
	 y59Dbln+1KhjoPZWNCYwYmMueZ/gnAErs+hEm6tUSNjAJjWXqFWzt9xvW8CqHgq3sP
	 JAzIrbVDeIlGK6WtSFDgYmQ+P7wbYcO1pJhCK9uVfihVo+nHnSIkJ62Yc1AwWmKV9A
	 IKljS6vjLPU2iCtUYJsFBQFyL4n6qBk5mxYj4IF7NLH5fWFChNvAc8A2Xz3v/NR8ge
	 EwBsO0eYTBsbWQjYhfM5ZAry4ug3BwR180BCVJcjPimubJhIEN/rEroe+mk3sD84cv
	 8kKKc01A6jALA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DD8C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917474275.22927.632355720802674203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f238a10fafce300362742dd72cf81429b602cd600302a2b13d74adb95512724
Date: Sun, 23 Jun 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719174742
