Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455511D5ADC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741715334; cv=none; b=YaDOOPHmAGrGJt0K1+wZK+8Co6DMAPglJ77PgU23MbM1tCD5faeFWe8OVqA9oVAayQMK8MVgESVe+VcOl9KBQCAdaLyNwKemcdtfgX7Z8ntfqN2fLl5xt2f2xVWDGS2+QootHsy/FSvfrNJ1i0h/19dDWtCQhEgscScnyEYslhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741715334; c=relaxed/simple;
	bh=LKGf4x31kSfr6v6EWPEmH/bLOyiZRq/bQO5gOZbIbZ4=;
	h=To:Subject:From:Message-Id:Date; b=F1qDr7uX4sce0yU+zEzTuhBU/Hc4kCmE7uXtgQlOSZcPqU4Kx4214VQ4rS970BH2OPta9tO+nR5pVWgpz16LKkk0Gb5iLEbv/WZ6QIl07gAp6nlC3s1XizgTwrw829jCxt9/mHSKocBgp93G9rJgakbBHLsJftqBJPTmLFGQC6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7B34yEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7B34yEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E20C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741715333;
	bh=LKGf4x31kSfr6v6EWPEmH/bLOyiZRq/bQO5gOZbIbZ4=;
	h=To:Subject:From:Date:From;
	b=p7B34yEQXJQ9I3lIYk7eTkf6ePrDFb1nHklmOjxB4MC0pcZHAKNn5KgLgjl35T9sZ
	 xpC83mngtnKcvaCr5ux4cAt6HFbnmcbcWpaDvnnauhOzjg6OsU6RwMZd2xg1idu9s1
	 MbraAMy9Kl1I7MXHIMh7K+2iJRd/RhN6atMq78MDVwp7ko54hIVIqkv8lq8y/e0L73
	 S6549ZN2I0fLvI/zDW0w4hExp5Y+sHeaY5PApzBOlCaggm02tAAua09+qX+WCXaLpn
	 x0YzfjW31YNxh4i0iFV48Sd2C7SXyJtHVG9L8djiCQwj63YWR1yfSWBHBst6gg0iVv
	 yk2UXy0GQE+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991C1C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171533361.29054.18207308989401492301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512883222fdc5b94c459ae6c2b73c0b5765579c69f8934b40a36cfafe0fc7446
Date: Tue, 11 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741715333
