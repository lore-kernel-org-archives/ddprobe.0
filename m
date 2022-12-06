Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6F08BEB
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A71AC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670338254;
	bh=KP63VxB57z1s0T+02goCUajmqnuf/kHX+di7B2OfeaI=;
	h=To:Subject:From:Date:From;
	b=Boh3SrNWWCIUZG3xALAHPoYg9RDwEvxArDQvfkQzTwEUcAv+KAvj58FFdILxGoycu
	 32pB+8CFKFWnEfIfoEDHKsngvn4DV04eOGJFwfzpxPxIftqLb8iysNZ/EQK7dKs7pU
	 kShHvye5qv9t65FccAKJxYdZszIXzgTymELbHwPpTR3p3ulX1jNo0UQ5hNWMpRZ6gg
	 RVevPUh8dGApppq2GtJE5ZPRJZM3mv54P7y+N9RBl81lUleiA7A9q3yH5lBM2KK3gZ
	 XtQOViOkgByKPoX9XhRW3JoF3EC21Iv8mJTnAZkbwpfzT1qVt0VoDBaDyinI3m4/wZ
	 L3QeYkXH+hmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2D3C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033825431.22666.13907159775837040493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3064b9f31525c8d392ce772fdf81ce996b729a674a48b9bcabcd8b300f93ef
Date: Tue, 06 Dec 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670338254
