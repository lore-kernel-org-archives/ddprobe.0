Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F3F79F1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83FC1C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667579454;
	bh=9xeWPfRTE5f0kaYBGSSKyggXRGiGffJxr8s/qXTOmo0=;
	h=To:Subject:From:Date:From;
	b=DKC9QZPKdxLewtDamcJNEWKLMXY8tZAbcUBQAWJtF+Cq4xCZBIqd4XWJo/MWgcAZq
	 I++hCcdb5wCoxItvgB2uMGEdJSFZWNDPc7HOq+Ub5gH/HYct35JGo6KFoSU0c9M29W
	 by7mPGhut3XBDk3OhgDGwuR6YYIVmL8DKJ9iOABe69BwigsWL8Ec6XwejtZZ/21tN/
	 WM+dIJwuXxKIXD4jDphkhxXRAnVMCv54I6zWpT20eK5ayMQQXUYuz9/kPimHTSR961
	 esAU2xRwKZmIOJ3JrPlNREoDcYZ9ZdnlSfeOWKKpqAKr6n/b3kC8+Zu0m/LO4AnNtL
	 KrtrN0kuBqVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ACBC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757945440.653.1683196009917599782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fa030f3d3d6ecd3e8b779af2cf053845c92db940b713d54bbd97b1415cbae0
Date: Fri, 04 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667579454
