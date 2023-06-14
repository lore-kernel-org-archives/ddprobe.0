Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A3E7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF41C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686706628;
	bh=Vd3VUvqpWFRJCfkaa2ZlnidcXDDYYZcepdcVVBix3pE=;
	h=To:Subject:From:Date:From;
	b=D0rKlSmEXnOEm2p34lcTtSz9Tcek3oWM+SF23NeeHEuSE6tl7KSrsRCIAwvM0Z+VM
	 VICVbwgbB8/+QDF3l7TfqAccejSQAGxG3OfxML8bDJc4GDHYVXXgLHTkAZl8ZEVkWP
	 JcC6T0AfzSPFm6F4+ABRryJfyBYfYGM5kfBETrJW105pLBPu8em7c4tPwew42imBxM
	 Rgrj4tRBjLT2SWuc5+r3EqhMikuSWl2UP9pS4ncT3/1fHT1ixyHal64mEamMysbiei
	 qOyGycTCxaQeS98XdIVBQHU+LletuT2keAoUFJkNeYHjHzFP7Klm0ysAxgq3xwBv0a
	 K6mflwJItxnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AAFEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670662872.21710.16384113298883109033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4387c417a78d616723166dba5928fdd09eaed98bf4c8270529054df7c6167c1
Date: Wed, 14 Jun 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686706628
