Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92E5EC0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC08C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672140687;
	bh=3BjxDcDJbbuGlxGx4tiWV9i9nJNMi+3W+CahRcSoKfo=;
	h=To:Subject:From:Date:From;
	b=JmtsktJBpFs0GvkLXqQzv6N4KP2i8bAMIxjk2TF7wwEagtmDYE93fQBOwDW/1xbcm
	 trwJzdxXhtdS0NRi3V+pIIeDiFT4se6y9XK2MGd5kDk9jkOmvScrRHItx0aRQikv+1
	 6Ih9XW71gTDa+xdfTa21oPcKeDN0HLZImPm7DKQMltuYJ9V38dFhx/GaSLaAscbdF6
	 uaRNyZHoign4lQm6w0FT3UwCtnqHHrlQ9pgvU6DvGIdqKEh1OinmvAvfQj/Y0orwhU
	 xpgTWvt50bXF742Z0/dfshVaVra+JPogn8cwOoBCGYt7pePfx2CbJJ37T+fPD/3Gpt
	 +lUX85a52Ahhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F67CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214068744.25134.12055876983009470810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df2284920ecbec5c3a07b7951075ad844d3476604617d526af514426b242163
Date: Tue, 27 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672140687
