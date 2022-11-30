Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE8579C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5B6C433D7
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669837254;
	bh=Jb4T+QIiOJGtjCUbJMiwtdeoYcYUAg9hR1OKBRNMYUE=;
	h=To:Subject:From:Date:From;
	b=YMz3rqJvAsKaOsUIPWeFHSxL6+EhigyMUofv5NakIGm0Qw48H8//yt4vPW+bRGmbi
	 Vh135G9T8+0ji+30EaQz0ZcXRbSQQa36JaRsGxDpJuzVDFo/2AqZAa7uK6spCVPSW5
	 p4ZC+sABc+YjmctWLBqZvELuVvCZL6zZsk6tk7yUO5Jojg9KsvQYgIDuo1EG4Z7B1t
	 4oncsSkEuQUiYVSXJ+5FhZkcfBqnhFcW4D8t0sQK1xv7rsaqxJtmpjE4bQvEUZupfC
	 el6WsGn2SAFLCk2HVX1lcSH+RtknqcxOAXR81uYj5/oxAQQzazF31cbCkjKHqbXpfh
	 dQbGbd7yzer1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDCCC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983725436.2106.12884445241253233281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4296e3f761056099439aa846969bd8195aa92ae90e607cd7d2bd8319db10bda7
Date: Wed, 30 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669837254
