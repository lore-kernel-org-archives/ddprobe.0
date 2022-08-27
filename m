Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADE715A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFA3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661570452;
	bh=b1XP7bPMk52RVfJTKD+riB5A0FUAP2yQ7cS6J6sEB28=;
	h=To:Subject:From:Date:From;
	b=NYJdam6BXAfeu5dZmFzoL6AIQOaXL/MdPc4iHny9WlA+L7DEJqf2ph2GASzkY7p7m
	 jrWDDU39kzc6v3NurhnZkd9sjEjT0nrp9Bvf0d74jK3AXBM2sw1FEAieSzJ1UQngwS
	 D8oXOXIC0GnlKROJSPhLPIN9ajAT5+ajSoyzeZxVbAlD1WkUcoAXtGLxTE5x3N7uSz
	 I9gw1TbzclSbSL6PjDX5HPghEaRXjGt7Gvrfjuw05mGWOsEC1Kx6OlpK89u0KdyBfo
	 X0wDznCjhmznheDSZ1z5LDTUPij8zBLTE/77dClzvjKsB5OEnxbv9Ejn/0YIZbHVfX
	 l490odEtKPREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557CAECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157045234.4299.2151979918810552593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b9299a55b142945cf4d2cca838df61093d0bbd096a6d78689ed0b922841b7f
Date: Sat, 27 Aug 2022 03:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661570452
