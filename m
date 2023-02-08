Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2772C2C80
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 14:50:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB59EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675867805;
	bh=PVWDIpyViSP8rhuMAF8QmlNxoT6zTbhYf4wDxycuC5k=;
	h=To:Subject:From:Date:From;
	b=dsl07E0knV56YyXuolxjxDsLeueM8LnadNRknSDXgAJRAsBXxhuND77iCr1m8DBY9
	 P2FuiYufh81v+9MJFzqCQxUZBLyoCwgM4XJnCtpMkq65cy05uMHnY0Ymu9UdRSVY++
	 ZuzEE5EPPHxbS2ZpAwgB8C9aDomUNH4JwHcvM00bFF6NFnskak5oUGRUJDADJsy6zf
	 VoKayRMZHRH0D8RD4Rnwi249VX4C50O00AfdATvltbtkh+Zp6s9CscDK3rF0j1rKJI
	 sL4HFdao6yFOd4/6V29hHRMoEBZ96SngJp9VDG8E/wjnb5O9BlXqyAgrrZGUKfgEa7
	 1/ChXoaz169OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48A0C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 14:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167586780573.6154.8550155995106113459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b6108410059e3a4843ddf6600b08c89231d4b9f998c653c600ccb8596f9f2b
Date: Wed, 08 Feb 2023 14:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675867805
