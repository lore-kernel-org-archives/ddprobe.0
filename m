Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279414C94
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 13:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3097C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 13:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684069745;
	bh=9EqAm6PHs34AoQ3KQktjeT0JQuv+CzpojW581WvkQ0g=;
	h=To:Subject:From:Date:From;
	b=KkMlyXznXFonNVswHzJ30fBFURBRhdCcJr0J2bBgNIE2hZkrg88J4X9nAX2zamaJK
	 PUpzy9+TAz1OKZo1cRNEPmYxpJkd64T9xe+/hZsSXXgeh329c97vUu4Ve/Xhxe13+m
	 RHIQUpv1OE4yiUemFLkpvkNk+aTjmDNSBgc7fFl9xVUJi+JIRCocwnlIn81cky7wLr
	 xxLqEyjXidz8c3UnIBVH9x/9mf3rPGjxKIm9D/xlaK6+V3NuEO0oNH9JfJnELBYcq8
	 KbLKOieRPVKSyqpBnefwdaEWcsVJA9N+W4vZyaJIwtyTRVxat1E+LXMuko8FXe0kde
	 5iq0lyLmXgGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36EAC77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 13:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168406974572.13795.3879506486750772433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ee75519eb7c8a04d9bae98c21178e04aeddbcbb2e32661b2d962e70dd1880c
Date: Sun, 14 May 2023 13:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684069745
