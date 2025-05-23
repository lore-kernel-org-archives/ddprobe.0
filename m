Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489B62DCBE7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747970394; cv=none; b=Hezf5jQrrbIQzG7wX41wnHfZqGP3aBYnTy8XlDqKnqSVldF5qVNuk7NVgkpvyAwJVELCzeaSJCQjpoIwTL7Er2KpCu5vRSkevnooZueHNErgnntfN+WWBykn9F4UttgO9vvNpRIG6wmTGLfCkjJW6UI8hpfPUXyAaHdABe+vPL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747970394; c=relaxed/simple;
	bh=JmjGW4I2P0+yvQsOgyB7nHXm/LT9zsOm+Ogxq5lOr6w=;
	h=To:Subject:From:Message-Id:Date; b=CCsYpvSgDjBmNCBFCigPqHjoqUBxR4B0eeB0SCnU3DbKLJl5umzgOj0MBTjW5v67N43sWyJnDruLF7YzNL1sUTYxjhFU/Emog3Plc3XrGORKjMR2/nlg/6ujSUo7yX10sA/EWmKsi2mGrqmcXew5XrCtODQIASPe4nvcTYEwwlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6A0e3ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6A0e3ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3124C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747970393;
	bh=JmjGW4I2P0+yvQsOgyB7nHXm/LT9zsOm+Ogxq5lOr6w=;
	h=To:Subject:From:Date:From;
	b=A6A0e3htfJNGm0MJHnGubNiUzCR+tHofc+sRec00AWW7l1N3b6CMiweFM7ZEqdSXb
	 fqCOmv383/n0Hx/L0s8rPDKf+uMb3HiHfABOZHKNem8wRocJmt9pQIvBQctdwMzcVu
	 ujIQxXpvxBAIY0RethXfk+qKibv16Ach9Pj9nzrMxinQ8fibaoFbnJFP7zKk1YsXW+
	 dU6KZpZVegnoPORYx6Oc2vGiyh0LHQLqOPavrGrs6yIWqtJK4tUrQNONuat1gy7YDU
	 9QKv7hOZgjzbW7JfKudCiNSZShLacLPF8rHv7ecwX275nAEjadP6LTsgJPVD1O+t/l
	 7NOXaOTZlc/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B3C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797039358.21836.7535226896670435317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754b8e54fcc19b1b69b8f414d3e695d0a2e3d24c448129dc79998ad4967085de
Date: Fri, 23 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747970393
