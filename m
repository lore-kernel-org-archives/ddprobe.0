Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC772B9A9
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747913994; cv=none; b=QEqIuCzxx/XFeGYihom3CYda9r2jIu15K0zZ9BOE8m61zR0lhiHxGHMxCMaE8chknB7t3NJC5Wi5UPf92L0BoNwWVol5fhWSusGJPydNbUvwB2T2p+O56nByPseqn0nniWl9n3u9ylCP5q+7faPBYmXFkuJZgYUZFoqkI7apUEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747913994; c=relaxed/simple;
	bh=HFghmVpRXEnxgIT1EMJREgXjS1pOJw1DjrfRYEaRrz8=;
	h=To:Subject:From:Message-Id:Date; b=DL/1D6TjzKFe3Z5vG6wCvhiGFAFV4nYCtU5RW/qb9xJWcQngzGHB63I53eYSdEeLIlHsYHHOxf2KGIARHtmyf1PQ03NApdfAAmjG6ed9A49uPZ6jesBFRBhABPst2UhJXLg03fmj1p0zorUPvAHJecEde1Sj6TiB2brjVmoHTZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ4Xsuue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ4Xsuue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A187CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747913993;
	bh=HFghmVpRXEnxgIT1EMJREgXjS1pOJw1DjrfRYEaRrz8=;
	h=To:Subject:From:Date:From;
	b=iQ4Xsuue/c8tCKvbIgx3uGJ0vwFYAXNNXaWI3FUbVI93wQpEv3H/1XTcr8Z7iGfQk
	 ErWBPGKTxlfYmLq5biJfSSbZziJqDrCnzWRVcekc7RK5Bb6ZfjQyDhGZDzWry7a9NH
	 SO1Cz7cVnk+cE7cOmEwXEJHSH9WQY8ItFfZ53IoXxpwwaqNBXOFv+aISqt+OSCVwh4
	 i+gKr/sHuCbgAhrHDyiIJbWD6lfUg3Gq5iHZvZiLk8toqIx0KZIhzQOEufouePGZtC
	 i26FlWcEYol/VXETVDCPSonciVAsDl+9bU1BvAhn4xwkqyqzuSeaO8kWrh67c7GK7m
	 qJtgKt/I8Ri8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8DC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791399358.4911.10096569679898868043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862fe5c216a506369036177081a5a8484b18355e9a8bd80935b993200baf857d
Date: Thu, 22 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747913993
