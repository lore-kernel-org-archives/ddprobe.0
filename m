Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE9D7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7CDC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667560254;
	bh=asolw1aSY7Bbfik6UWqd55kZNxh71OFo2ErA77L7lxU=;
	h=To:Subject:From:Date:From;
	b=tQQcHgm1BSIut+PcTkPrpYIj5Ugf8GFlqRsx3ypvK0oM62lOXC/VYBVHatCAhS2K+
	 zYlEmPKk2Dz9ioQ0DZWXDkPhIIXoVk/qkqS3Mnbwuq1FnhO/VzVXNqWwfxHMZLis0g
	 8Owx/LfrsR6/uwgtXXIP5l8pFMoUy73PVC2JE3ZdFpmVmYoGLgYnXBdt2ygA82H4k0
	 SqcEPg2GnXG328mgTOedolZB3LwY+GAPMUiaGvENgkAzOOjq3s+ljvJqp1hDtLYjBe
	 aRMC0IQHdlENlNLrDemR21Lo3Nb68I/HF+TtFr1/vtC7NsR37KYfZy/pTm7HNpg6L/
	 VVw1QFkHIbbgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E561C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756025437.12611.11626080343764049623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3e3c3a631f05cd48ad2f094f0281f6fe9553148a6ae8f6ada924e15b12b68c
Date: Fri, 04 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667560254
