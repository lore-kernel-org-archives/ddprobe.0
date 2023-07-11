Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5065A18AF8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB6BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074228;
	bh=wJv8/bEJZVY2iKFrUK8R8ngCv4rjksw6a0F2MIP2LcA=;
	h=To:Subject:From:Date:From;
	b=qXPOsdU82fpl7LJg8sw3aq+Nn/hDHm3IopJcxzyr51AYW/kZr10BRErdP1ow6kipI
	 /1nJeT2cWf2GYO4v2YYEdSRx3Ys67tBTzRpl+2lJGcVbgX/iuRymtaynjmlVdMmhX8
	 yEsZOjT815sKYzqCoKK0xHHJ0FMexe+dKjZfd1ZfqNte28uIlz2ws1IMkR8dVPhAgs
	 wLg+IgmqbNmo3wjktV/B30RDw9R1d3iXzTok+1l4D9drBCGDxMNDs7ltvIiiR/q9DR
	 BXtGy2iMrrd1QPoidDnIU0le+7hPaGCe7EZcfh0xVyK44z9AQBIluhlzIbs6Ut1Pfw
	 Wqc1viYuF/WJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3600EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907422871.8142.14812726880687691553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b17b3c6e96b305fbb94d29fea57da4fe70d67a140bb99113664cf99495b2d5
Date: Tue, 11 Jul 2023 11:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689074228
