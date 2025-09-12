Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409A31B130
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757696394; cv=none; b=g7S1dLsFiB8nmMeD00QmP5ecJTcFW1rYaiP9AFRK5kPkpmtLS1Mwu0+esTHCmTWHk8eadVY5obApvD3RhccLc4ueQ/xLRJJ2ef/nWmlJ3KQAg3z91FTG/pGsus5GLJ2BZ9RplHsrewflmpZSyN0vmLBXQgbyO1uPK9BsLvHv7YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757696394; c=relaxed/simple;
	bh=nf8SwOJVrJfFiiFKOqH6TRzbO6wTUITV6vD3HS+1A0g=;
	h=To:Subject:From:Message-Id:Date; b=h1+mj0r3t8eMH/S8pTX2s7rBen8GmN3+DrkJmHSVJlMCnFfInQW10yJfmdsvrieUREoXR713vz2Pem0GSpaDsiI0jOe9BeH/p5/IMsuVQv+aNCe6Lr5viW577ECamAfYIRpIocIxLD8UFBJSdQcRWxN3N68ucj41IoQDJvZmLr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgTEoG9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgTEoG9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C6C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757696393;
	bh=nf8SwOJVrJfFiiFKOqH6TRzbO6wTUITV6vD3HS+1A0g=;
	h=To:Subject:From:Date:From;
	b=hgTEoG9fLRzmzDBkYT1z3DYovrInpWM4mml6Ac4D+N/QgPIwC+sUxeX6aBngH+8+C
	 Ipr+gkjxaJwiGxVtQruB1Brg0a6iU0wUM/i7Y5+FqV0VDo6F2HxLljj2ZDCrP250JT
	 /3gLzEUzPn0PnvAyIA75NlABkZs9HKbYtBTaH+H95VbyaqxR5iXFboBFO9hNPC/kI2
	 0J3VJI3HixdYLyYyhQZTFHoU9hI9oE/dEi9asr21owGhfq/3tBnYaahjRk1DaDBKMu
	 SL5E3krAZWt4jBco/ST6Fuj8nm1EINhN7kUZXdUDV8ZllE2jrcJNKx0jaaVgy+B9+j
	 hV41mAAgU3Ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90786CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769639358.27094.2717091007341551521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0802106bbb8c5f605058527d92576a26663a27a51f0eaea4eb4ebae59a40d38
Date: Fri, 12 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757696393
