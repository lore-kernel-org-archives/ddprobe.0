Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44501841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AC0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661394052;
	bh=nNrJiGNKJWCyI+s1kwqt0HNkMcz9tIw6cUGl91V98Og=;
	h=To:Subject:From:Date:From;
	b=NpXlMTzaywzvWop16EOim1UoRi+OZQJy1/4yHv0ksv7qEPaC/MReA4rVVUBEHkcpf
	 vF14md5ePlVYyZjTopheTDPtigVlEs7buoaS+ET3Jif46W7mpw10u9cq9V+s/mSPyp
	 GRZKsVf4/R7y/AMRzPHAfaLrPdgABUmv4pxQl6OEqbYAwT+eGDbIQZ1wyIECCmbiP7
	 uhQbmxbwfNIIq2ltCjnFxRWRVNALteS2kne6FV6lZUwNvFX0cYtEk9d+jk70lTcKU3
	 dbpOPY10XRns5+iS1WFsjMRwJieIZCjbaBDnBjeWc9i82h8QxHz6a0MP0pTl6biAUo
	 6DO6nypbsv/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C046C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139405235.22408.7571144137962181329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b59ca23730458b8e7c676e16e69da9cabc5905a2c2a2e936a32d8565d9be634
Date: Thu, 25 Aug 2022 02:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661394052
