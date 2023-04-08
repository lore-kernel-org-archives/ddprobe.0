Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1AA139C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 149C7C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680957066;
	bh=VwOpgtK3jZlag0/GPnKeywNPol7zsgCeourCP0kQ3QU=;
	h=To:Subject:From:Date:From;
	b=FML4VV/hb/jeMlwNTq8z0R3/yQzC2wpcBmd+BbKz8/Ei9Ln2UvV6lfICgyofrNofI
	 blOTkBCBDJgjjfNQCmyKblqFIKHdj+TCb5inuNUlQpS4J2XAMl00+5L1tZOhdK23CZ
	 A2XiCF8ZDHba9ZeKr2SyuXJm98k6sedt0GiI52TVMMkH2BAgaBDcQGFjlUfultwfgj
	 dockVYTHFr5Ip+YNvTAh8xSwRXja+R6fqCHkQnMLQUIygm1t5WHKq0V++K19tQsytS
	 uWDmAAnZgRUi7EMkuLbTaWvAZXSAHcdkvA/qgD81SmijtcYy+1umBgIdIRze6wSDlY
	 IRzbrDFyLE9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDD10C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168095706589.4098.4525392536255551246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9003ee9eb9cb42772895f5dd81e5c0b533f4acfb91c3ef166ad0d8b5ec0b58
Date: Sat, 08 Apr 2023 12:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680957065
