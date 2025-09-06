Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C326527B340
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757134193; cv=none; b=Z2beo2mBEmODwvcyt/jWHMqV40sRs+87ukLLM5bKs5nP1ddcSCmR+7pQ/MrWx4iJPRrlVFzVPxxnkvrYewAxIPr2NWbTv4Qm6zgxM5tzHkUIk3HQYsUosUiQiIQGVJrdoPejOh3TXgy3Woh+DIVHXN3iAEZMcPEeQwjLJ/5D69c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757134193; c=relaxed/simple;
	bh=qv3V9I9gLxJA9nH34gWsSNtNJ5wUGMN47J9s23y8oBo=;
	h=To:Subject:From:Message-Id:Date; b=ojwe/uN9VBe+/wVbccHXZ/e8UohpRimeeAC16C8YeLpE82Ala0QKDgK5vUo0dpjfCGvLWQuoDdPmDLUZJ/Gt9+OIUmgfj1Uuz3XEvoagG0OebcrHLm776tthOcGQ0gwNJK52tcbpEeoFIAnIlNknC8kbp7JfrojS9XCdXcjgVcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAWKKB4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAWKKB4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1284C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757134193;
	bh=qv3V9I9gLxJA9nH34gWsSNtNJ5wUGMN47J9s23y8oBo=;
	h=To:Subject:From:Date:From;
	b=JAWKKB4loe9Dw337sd3zNxLMvXKe3xZE7FkrUUaSmZUrFglBwl9VcCWo5Jb38XjdT
	 7r5r4YJ5SGBXHSpRbCA5iBs6vtjzn6+Oh+QkoBIQMKC1wKhmtmNhi2mMh8C/RdBpoG
	 InWajZw/7l617VCJDHO9cRARJRoXws5nzwsfN4G3ruVPkViR4/Q9xO/ImAqf9+6JXn
	 cjEOvlCTBviBSji5J0mJzZO2iiitvY/7MIX28iMfad5nBcB/1sMky18zTmWKgpGCgJ
	 mw8C9ZW/zBaR+4pM03in2q4Wsn7zBD+MSAzS1rcHd7JyIlMkETWoRusT7e2EJT6q6+
	 4hVPqC8DqDqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E646CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713419357.12926.5945996345030854426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae95ceb843fda3b6e16605b85c9df51f4032bae04d323fc71f387e3b8924a4cc
Date: Sat, 06 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757134193
