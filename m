Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F14162F
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693110248;
	bh=A6xefxEeIsc/XwlbZ3hW0oCaD2xXOWEbVb/wnqkKRVk=;
	h=To:Subject:From:Date:From;
	b=LghnxwKZLw1h3H9zuikIUHTImwBFYBgQHEwy25sxhPlaWGdIsE6/Rivmx03neRBU5
	 d9sgYW3OZ5q7WswVwMkvG1wvzcrYT1JScvgwP1aX5Mn56pu/Fcmuafr6UBxH8bz89e
	 BYFjDnBubinJzmwyuCJhxJ5Bbp/fMqrcFFgXPj1U63GfigRKG9Q2LpnY3Tz7ViYrsX
	 C1gSwTh3FneEJD+k7Jrnar22nqAqhN/r3Qdjb3VPspSauNulw7EdfteziGzDYgHccV
	 Y5iyXmbWFbwazB4wzPS2Qrw9g75x1o44+YYB+1I0fUMbJbPFCDGOJ122uItwEuYh2v
	 s1Y0y24HC2z3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEFC83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169311024867.6920.8211522111197334954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641ec8f1bf7876bc1d7deafcea6c79d7b6145e511c62887199dcfd701fe549b5
Date: Sun, 27 Aug 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693110248
