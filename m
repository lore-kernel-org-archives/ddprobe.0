Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B699CEA9
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7900FC433B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664418053;
	bh=fLXflkDDjCjFQnt99EsW82GLHGHnrt4YTIf7MQ8W04s=;
	h=To:Subject:From:Date:From;
	b=qb3Rm8yWSpcEuwlpHr4jUOoU/scLwFAiM+tTKWHR8s8seHU22gI54SPinGPW3d1it
	 NpN/BP+vicTi1XNnDIBOs2hH705JuZM2ExXrI2sGJgXKSa9lZME1VzFRC9BfHFgNZT
	 8LQMQFThxX6m9YlMlFdHzAd63itU+uE6gWCHMAO0X4l70HSa3oRdMBy3uxTfF8q9zR
	 mf9PbexLoOyB4qQf6aNbLhfdoFYaG1DgNg4168I/G5rvdb/ZgOS7Y5fH+fV8saWZ3/
	 CwYfGC8Su5utG0vxKCTanijD+5kM1CcXpv2nXS/QljK2YaQoKkAb6/ybj+dS5WHSYy
	 LSrt2gHk2vfsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63141C04A95
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441805339.17354.17344507491330688382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9954e4bc4153f386982a3310f489f5a08606b3ec7fe1f9d24ed20f9bc506fc72
Date: Thu, 29 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664418053
