Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD87828E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0A8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661508052;
	bh=tVenL3yimcE0c/qJetALrLhwlBFgEADM9284JZXtrAw=;
	h=To:Subject:From:Date:From;
	b=bfiINiEJJVXFOJ2g+NSJBiz9bu8Orez9gYzkwQJZbPV18AOIuIAoGiJMx/4NIo0Hn
	 aT8hx8zLjsJxvvpVZIeG7JIY9PhMLPy1uw31zOeAoSFCbV5NFLmlh/HZAjwOLvmRl5
	 KRMwhEDJCZIA4b2nPjwiIyXitP8udktduyPGMWV+N9R2tbFO9Sk0825pi2gN+GMHKS
	 +8p5/8yKfUvmbrBCIhILy/TMDGCzooFUeT9GXOP6JzMtwanJo2+nOhGyG6MdLnIcNr
	 KIAmboOIfckriHkuOATgaJp7DOsyCRhvhfKo3pYLZAGY8V69DSKNZ71CcY4fVfecuE
	 eYHVIvUQuJesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AECECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150805233.1803.5366464042192073748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc69eb146e3bb06dc346e88c741c2a26e4526fec68123dcc495c8693a6f6ded
Date: Fri, 26 Aug 2022 10:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661508052
