Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FB77E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697F5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662255053;
	bh=z7sNcknRZwSgQmWTL9G3ZLDsCT4lucCneVGoc91YLoo=;
	h=To:Subject:From:Date:From;
	b=OYhZ+gnYpDFunIco1wMuihNkgmsi3X9mp4tRNS4wKI2E5gaenFmBfWH3/fzWXhIWm
	 XcqhDKoBHnvtMRmqRXwrQiDvJ+WVvcGIiN1at9GP51e8mJZgUMbJJ80CVrPm7fStBF
	 D57QYFrWgH7m8IcKAn/eSDO7zh1a5X/xbEbJUmco1RH2zqPrSJTdn2AxJ/lvneYYBI
	 ZF6AmDBKtU5W13fJK9756bWKxLhXD6Rr5ebdyX9RENbpM0p9yhAt2kyNqyCFpI0laE
	 9Fm98a6RlUaaCBeoxzj9scjuFK+a2656JWQnZCaqIoM/xFD/daVbIK9i6CxFsah3/N
	 UkKIEDGlm9UGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520FEC54EE9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166225505332.13695.17435082642971967617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020452a4baf347f08cace6266b1314b7aa0408031c5453dcfb7fbd244617166e
Date: Sun, 04 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662255053
