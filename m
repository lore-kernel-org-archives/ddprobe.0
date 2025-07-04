Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E511386B4
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751652594; cv=none; b=MJNtgAaIr9ty8OEAy2ryfkdIcsuT5fJsFaqkOoKMubgX5Xs16vXtCDKe2fyU1gRHxZMStXbCPDX5J32IrVWQWrxZJGqCpbWdr5cukL9N0U8VbB+ysvJkPJ/JN7T4J1CQY83nqb9aFa6uLk+DY3LmrLb/wLMc0IOwDkL2sm4Bln0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751652594; c=relaxed/simple;
	bh=8ONR4Mv8xi4LUG6k4lfcRqge4XmFms27Lq+w87/SDFk=;
	h=To:Subject:From:Message-Id:Date; b=Xv2Eq4UQKEEbf4ZoIzGARfMHG7gfM65Z+qwhC4XQjBCHzG7SwDd8Hvd01sGpsJVBxwYj23AjpGSiejbx7COVYxg9oZmyLnWM7vaagtQaC26pZoobU7g0zno04Wo9okST6Hh+uhSL/TjaYxtSmTVMzDN8iDsBSnV8i49e2tVgT/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icfq6cGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icfq6cGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA6AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751652593;
	bh=8ONR4Mv8xi4LUG6k4lfcRqge4XmFms27Lq+w87/SDFk=;
	h=To:Subject:From:Date:From;
	b=Icfq6cGbh2NBVCbgTapB6tWcPpxC1mgnYNYbZL/COt7vamR8cvxQtc414tUnDrgKy
	 MnmLJEy4Ubp70pEVoFfzKgtAOQd288c4yBrANxRJtMXNulCeP1n5XgsJF9MkYfbPm+
	 6fmQJ7vSfeUQ3tnWyVvWCtK9v0EqBIix/EXPM4JxB9zFMJL1UrD7Q/w5lzYFmPK+A/
	 7Psw6cQk54lWbDlOTZzJvcwADzLAcCg3drNdrxnNSnidtwQGcq36zFE6A9PN3zG5ih
	 vTxXH4qxpW9FDLUXRFKDIHpLfQZsCimBjfX0UebhuVvWeC6y/qgspqi1NaWP1b5p03
	 5lqrRhNLQlLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F524C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165259357.25757.17923506540347890740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6b62b106085d11bcabb472317257350d66d19f3d7ca0bee98242dfa2269a05
Date: Fri, 04 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751652593
