Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5C27EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F81FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662827453;
	bh=cnGCe5pR/5YVK3iyPem7ROLJUW3uucUp7x5G9mHX/xw=;
	h=To:Subject:From:Date:From;
	b=oy/E4jvXtQzDu3SrwN3ax2/BRqFJkeTRCeUPtz8gG+iA0daXAXn9h4bhrtTRhr7oU
	 yIavfbW+lf0cuukUpWq/eIz865QUPFCn7hymf/0oMlWk7cmlMOquSDFNKLKIqL7yJy
	 99tkUw1JYhMgBjbwl3l+vg8OFuCGiwfK0lbszJczGpM+gNvG/wHAH4RO1b4W3/KjjI
	 jBBIBdOrEf2+i/LxQcVZ5VjgqT1P1FvJaPGaZWsrfnPb8dGen6aX6cJW1XZpatuDVP
	 oDJvwpUcK/NwkPnmS75O6GmKgxcqmmLywCxgyrM5/hFv6T8KlIDsDKeL/RHlNds085
	 F8d/MfImUkABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561D5ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282745333.11709.10736936044420599910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634201cb5b07ec5b3a5c014ff419074f41579e43a7e25eb4572637e5edf3e8e3
Date: Sat, 10 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662827453
