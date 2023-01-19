Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7BB195
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DCEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674117087;
	bh=SGu3/H+/npN3XFzEAlBF97zbeH/IQFbSQ8jtBzDkYPk=;
	h=To:Subject:From:Date:From;
	b=SgTcfP+aEDzfg5LV6qerwQHIewH7q2cIlUILnVsUNIU1gjooAL5Qc01V7HoKZ1QoZ
	 f1+quEIdhyb1DvAHK7Sxj+odbYB+xT9jNWe/XnKLdMZExuTiPbXniw1WOFwWlyioSP
	 ayIchgiFm3FI9OWen+0X0MwnRLjTVubsg7dlfJvxfk4lKa9H9dBCUjiOwCWHomYXtY
	 b3DxGB4SAbjm6HHUPKHLiYlfH/vDsGw3U8NEE/qJWG8gJIrI2zYa+DQOq143uYwzPV
	 FEjFLatyfqEWpdS6+I5w5zZB5r9v/wDNJYcmjDeHdlI4YTtQUpj8RkPK4plVE/3CaS
	 xGJqR9Qy5AwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6954DC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411708741.27206.13314476568885594275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2207f35e173ae799501e8092731c5138157ed7899237bcc2bdf6ba807641d66f
Date: Thu, 19 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674117087
