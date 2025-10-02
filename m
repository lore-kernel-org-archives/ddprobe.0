Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262CD2D5928
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759413594; cv=none; b=e85toXrOvMlMrLrurLYo4J1pRfWuFmfODnsJ9aDPwSNW936Su+N0JmWpy/X/Ft4mmBQuy88kcbi6qHChjR8d91YWw4WbdjzDbLIAuOQZQl4R/pph/hE1jn4CFvaiDB+ZlsYpkptzHOmXigdlJ5MmJFlvrv7B/xQmn1TtzXMEhP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759413594; c=relaxed/simple;
	bh=/1RzGzaQ2AnmCJLEOMJ5PavU+Cs32YH7PfRFC85JjA8=;
	h=To:Subject:From:Message-Id:Date; b=RTydSEG8Sl/bIpkwdMUTcx7JaPhOn7bMIoxmIJFxLRvfVh6u1+V2xw7S+Nqh03v7xCJKRaT8kPrFeTNJ+2772avEpI8jW5tufUABWhTZpsYLzegqr+TlLAMTDaZDzy8CML55yS5Z5maXZOAwrWNkxNAGF94iraP9ix/966GOEjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB5FXh/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB5FXh/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B2C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759413593;
	bh=/1RzGzaQ2AnmCJLEOMJ5PavU+Cs32YH7PfRFC85JjA8=;
	h=To:Subject:From:Date:From;
	b=pB5FXh/2Wb5l5wZNjOOPKfV6OhJEW0Xp6CbNkoDqhHb7kcCUbX5b8HnYDTFoYVSW7
	 VTMtkQQtIvcZvr6ujqyVXr9dTdtoVXYGgtqzOhe4BgGEF30v9Eex63QDfaV4gOQiPW
	 4TylwAXVXFEotcOTB73QyyL40WiOV97UHbRMkdbv3t/9/J4uvAke442xYNB120sB50
	 bMCNbhi5nPVX4MxeEE1OO5ArRj9XR1DPof++kr69RGTDmqozwPml2iGWj4iR9FH7v/
	 BjUL1IsO+xfhOY1rSn+nfAlUeSJhHcVU4kX/sDqUsXQWCEeZjwst/3MN1BfzrTfGSj
	 5F5VRr5CcVXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B56CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941359358.26790.13888810702586474349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dcd2ce62503da11823829240e4b74089a0416defac84d279a68d998b9ba936
Date: Thu, 02 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759413593
