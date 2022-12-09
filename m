Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D374EA5B
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB68C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670603487;
	bh=Gntt/cro4VzxS0g+nODhKNoCWgu7fydE8nq7f6duMlE=;
	h=To:Subject:From:Date:From;
	b=o1xC1LsMN85lJEqkuwGb1XQyeJREF6V/gYC8LqqvZItivEjVI6GrizuzYeDw7JIjr
	 XJXVOXt6/wU0upjZo1bpIbRMyXUDyAfr9DPPuEPJ0HdoURCXDRBOAgBQdnplWOrsDC
	 Bunh8bZC5eVgRdrlL1O723HOgpqJIh7IJHcsm+oxbcG3SBiRrNKVWeWMP9Ayc5EdL2
	 dss4YyaAHckj8LAjUDaQzB2BTJoYT6vOHKHfcPoXyvzR5I22aSOOR2fblBU/8G9ngQ
	 0e0g239UkaAhN7eublpuuPgtfvaJ6m3GUrAcGMkW9U2sCFeNkUHJvJWr92rdafYmzh
	 lkRclkFfvXSPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BF3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060348739.2469.16521657283810566505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edab41367c6aa70cdb097ee618d58609666514cfa8a397cf8c3a43528df2507c
Date: Fri, 09 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670603487
