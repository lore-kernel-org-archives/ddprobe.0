Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B9EEB34
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B6BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672948287;
	bh=gRCmctA9G6wbiO18dkSZ4UO+xs3Q6tL7nA231KJmdZE=;
	h=To:Subject:From:Date:From;
	b=jvXoklbwbAe3lWY0++/Ju+NBFa16JE4WoJ6IOtkyS/dFde1soRy7truRkeiwWV7h7
	 KnDPGrSNKTClmIewUu4DSczvOQioHeyPRZLutqRuW8ixndkNcVGxnHdPtImOKMvtSm
	 tqGoP3C/Y8cp9/XUAjGkxROmLkoMAZ3oe8cAdG0gLxaiAG0iQ3OIhy5WLT06IvWxIC
	 ULSaxrI3DcuIFs3SL+NcrY3I4Sod8XHO6jqhehq0y6LqU68ToQOrU0myFgWWUNBTse
	 TU2RDU85OJVXT9UC58SN/jqAxmyuitt/849xNC2rZKVa4ZMUv/U8921ebe/1zkaQbu
	 +bhwRspA6uGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6847CC4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294828741.28014.11013420321633675586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486ede2d7bd32e0f9b614da0cddb6a1f2034c36872bbf03c336383b6eba06a2e
Date: Thu, 05 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672948287
