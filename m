Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A31410EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DE9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687993988;
	bh=4Egtp7Eqph+klMk4nbilQWP4s4AuaQFW4l3DwaWVKPY=;
	h=To:Subject:From:Date:From;
	b=cyZSA4H0wWqHf3wx7KUYLkCinLFVQupaWsLfX4Rd13m7NHkOXptI9hVmVe76RqU0M
	 aUC/61r6c3RnHdgyvpb5WhVr50I3qsx8ccejCOmGnEy/3oO+ids3C7b+4HoH3EdSZF
	 NIUQQUhi0Vx2/SZcHV3DJtMExsvTHnZE7Yy4A4osz6sFx/w/hu910ZYLfy546ZJXuj
	 /AmFyiBCHZTRHOU1EU0aXOG8qz/I7MYloeWq/P95+dyeqxq8qXiMPudCDWn6BbmwiG
	 qbd9QJVm4nspbHkwRAKxPauS0iRsQM6IHaCr/v249ih7PkPAGAs9lLb5o/BXM8y/Td
	 9EtzYeD+6eL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C2DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799398879.17860.8173088459409254136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e732a10535a5f137f224485d599f818c3c3cfe6228424438240585b20f948e69
Date: Wed, 28 Jun 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687993988
