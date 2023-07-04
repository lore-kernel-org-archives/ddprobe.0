Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1EA1375
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A20C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688455568;
	bh=HBguqDxlwwHLSiMh4Nrtx/oMNEZu22gUCaEU5cs8gCw=;
	h=To:Subject:From:Date:From;
	b=EP0wNWZmbgo0jwONnztyvCLthMZMgT5nykjce5QfjXPQthWL4DDw3xT1BPTTVjw5U
	 F2ixcGBzAgufENu9FF9yS6JYRdQUh80ASfRmJkxk846F4rHeWRTmKe7OeQy2NMhj8A
	 0mWs1VHrwJ9xpAsT01XXiZVCyitKe8U7YaqV74tHm8YtRAKVX4W2HXcTMT0jtfDZQN
	 wBj/uaKQep8jwbmabK4A/omt6HsNYYum9d5SF7ze2dyRYtmQjHqQK6f+je1kgUy6P2
	 08pajLrQabfWMLGkVI8EVHQksO25tfrCj+SIORMHWeR3SyrTI6TwAJklYv0t3aH8se
	 v3sxHz6kdh7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B9C001E0
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 07:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845556870.7384.1911961758996338113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f81d194280e338e187d3e667cdf0a07c69208d2fbf014be9b9212655683a8b
Date: Tue, 04 Jul 2023 07:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688455568
