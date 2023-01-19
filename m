Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9EC3C04
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8333EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674118287;
	bh=8q/lyRrZlFPte4XpWyVw1Th/dH8mvrdxOFN2bErOpiU=;
	h=To:Subject:From:Date:From;
	b=FphLpszw+nEk9/V2xsg3KN/FpR1gyOJ2rVfwsyT8GcdM2ooxUx2MtmcetwL9mBW5t
	 zL022ID1EeXAlnRIBPzt9xsuN4SyAyYUILd9PQie7H8EjsC2CZKedwIuodV1Vo2ct1
	 NqFGwew2vXB8LM0ANnW18uLJzF/Za8GD2OEoSSaWAvwqUYSrqzc2lH2oKo19D0S4r1
	 nI0UdlHn2c4LVcx9mabdK3rDwxEXOew4ZGCCTjc5JwcRWS96ybVAJeEAXy3I1hWo+O
	 x03Y2ELKocibK0pWqFHfZ9lvpSvdst0CD6TMcX4cR9i9nveC2GhWkpUiG0CToP+mor
	 QD5E93iAnmBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670C6C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411828738.29099.1333568230357890160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1759b52e572d94e5f9e2a9c3fd48f9e3568d00b9afd852d486770d2f7fc3f9d
Date: Thu, 19 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674118287
