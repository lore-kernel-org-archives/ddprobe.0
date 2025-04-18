Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B3E24E008
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744951794; cv=none; b=MB7ccYKbqfHyFzyVtIa4dw212bEmUPStI4RTPmLhsW0O9iclReRkEK9NbQPfWp+vZC/lLwPYAiGcO1bxDJPdEV6i4Kjn6E+r7j34lPH56nibJc40/oYVvt4bQHiCuwv9+YdjzoqnbFcrV3ufnGcaiY85p0jFvQYVkautzVFfdJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744951794; c=relaxed/simple;
	bh=M2XVu9UsMa0YqHPP3Cd964I4j0ZJByS9J//vZmbG0Co=;
	h=To:Subject:From:Message-Id:Date; b=aSzmsdaFHEVTXPvlFP0VfGt5FfYC+XWBV+MCh7/xAvKv6bpbe+rAXv0MwAA97+B7aUPENhzIVCVyNKeYHi4TqFCGLM8YkK4gc4NLzHA+EtFWpvb0lEloVYmWKIJoJrl8BMJL93jRCCX6Io+5OQmzFu5+Yyp+nGOFKKH4K0jhSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg4DIcS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg4DIcS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6992C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744951793;
	bh=M2XVu9UsMa0YqHPP3Cd964I4j0ZJByS9J//vZmbG0Co=;
	h=To:Subject:From:Date:From;
	b=eg4DIcS6TwgxshbZ7IV/JXBjD8O0x1wAvMoB0P1KENdY22H1DRDe+lmpXyZiwGbP8
	 zmTMJhzOfeXQE+Xe5oQwVrBKtN3BewljgZXJZ86jLpjnE4czlTTiZ0k1+HVXRMtp08
	 PNKja9ds4ofWFYFgtNESZnluLrBF/jSfZ5jc+iPyeHbTvRUytcz2qQO8vBdRLhxB2t
	 9s3h3ewphfXNEW2RixAH7VtyZqhHba0UDE8A+KtCq257ZsL6r4v9Nt0CK1//3wTzQ3
	 3I4mU8+29T04XLJCs+/To9TLtTCImiRfhGThyOyEx3UWu/RFPNOlWxWYTDVA4q+7oA
	 X6OqokiLJyzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A9C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495179358.32127.8066726889455057530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af51bc3b1cd353eb9743153b5cb9cb498344d2f6b5be5b469ec70424834de91b
Date: Fri, 18 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744951793
