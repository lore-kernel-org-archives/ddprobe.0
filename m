Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A4D7C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6DFC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672806087;
	bh=ac4NFN0iDsYGceQw6/tw18803gj3hlS50vNxWIeJMNc=;
	h=To:Subject:From:Date:From;
	b=iEJLzcicVGKc6rj3Utk2Oz4is4wyYIIPb8e/LegnSL5s2R6mMWSHXuBastdp6X91E
	 YhfdKU0wIpMQKJOJ/UVEOL0j7NI1WjXqAiX+9R4pDvg47aGBD0Q6+S9Xbwc1WbLh9k
	 TUuER0PvLJx55D4ky+kyY67kOIk8OY4KxLsDM/Xzkk6dXtc/82MoXD7LqTo+z5ik73
	 NUZKL3B6bg0a9VaNvvxhW9s7WRBJLy1Wdse/VgOoxrnOet/K07QCQcFAdYi+yUl9+N
	 fugoW1ddHXQFmAPxXXFMFj+3LGGFH5yEY8AbOTDJ/aX9jbMYP8VKBGimfwiX+nMlDb
	 HbAuSiz0BWC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69601C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280608739.3277.10109875714115440824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655d5ba4b29fd5630e1f4ecbc5174066900b0a73ae6b2e651ac9866621aa88d5
Date: Wed, 04 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672806087
