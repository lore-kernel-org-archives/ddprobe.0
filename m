Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFD620F80
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3B1C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691627588;
	bh=4+t4WUPAeg0HRkOnPbqijC6vo9wHmJqBbWZ763xjA7Q=;
	h=To:Subject:From:Date:From;
	b=gPZHcG9FPK62hwuk/tTsFjPtgO2i/VAa2lHCG+uZ+EYqG7tgoaB3nvXevSdkxXU7/
	 lxklKuTR4PxinxPp+OE9XSIzsRhtqhG0ycj+7ofgU8k3j9Db0Nqx1I27L+zLRduG3G
	 NiikMlt/PkfeIkVz3oEZkMbh30tx4O79CjINszWJixX5c9rjwRQttR9jMsAwj+wFzm
	 NI+Zw6jX/fy9Ci5sw2QL3GkAWBe/2pH0ApVi9SqLGa8vq+8YrUmEntcEJwujh5NCQ6
	 lZHUYNDI5vKOvcMQAcNGS4/c6lIk4t/KYT2G3PhAEYWpevQJxtaEPrJLhV/wMPoXM/
	 +UJJrJ//kGsXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C6C001E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169162758870.27752.5693219351245627119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cee672c9a33f7978cb4d258db40cf53bf7b42d54bb260f355fa2c11fd39721c
Date: Thu, 10 Aug 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691627588
