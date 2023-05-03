Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D85DF43
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC320C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683141006;
	bh=Ges0oLBHbkQhj/ixajE7gvykIMNmdZW0w6uE7X9gncw=;
	h=To:Subject:From:Date:From;
	b=qPOxeMZWktEXhW0dfi1rkdmHsA5thbz+oCWjaJdu5ofZz0HtWyMsbqB3dpqOXr+WP
	 nuMDsP+0ZhaVb3ZSu4v52IGYsEAo3sc75TI2RBQICQ289N4Q/IvA0D5wVR/tt8GTkN
	 r9j8eBhL3oIxIP7t1m2NE1RGSfJYhKeM4/94yODCTjRtkPUBDm1GLSLGyXjz0RDV/h
	 +wLo5WFCarMk6NlwmKPAXqeU6MjyEjNX4iffSWTEHw0abyg4Mg3/i0ApxvVmaNXv9T
	 VghzmjPbH7uPEgGIBTygaMcDdWPV8Wl+joeen7gkkQJl01LW8hcGRYpq0IECTeFoVD
	 KrPg5XQKUIU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDC0C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168314100583.384.12799643593554011841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78413082addf40005d23730606e25b218020816d86189bd24440c3a5c9d3eb0
Date: Wed, 03 May 2023 19:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683141005
