Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E3A5CAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC5FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665435053;
	bh=zgdtp1GUatwplEcpoD6Kyy9FWqZpphC6WDhg/r2uhTs=;
	h=To:Subject:From:Date:From;
	b=B8jUgx2jpGMzkhUYkGUUJ9i6cdavR0lN+Y6iISw+sqKYenM6VdYKOgL7yYaHiP++l
	 xiqNExGYl9IFmTo8Z6LRciiIyBJAyY3hbXSCLh9bqVfFtiFllU/7XP9THX2HXRo2Jc
	 Lkilhy63cZAVBBNX8v4qUfFVPiVCqQNltJD/KvcZKsfyjReb8mtMZ+e3RahD+6Vjlu
	 RpzLgSPVrRm1sIJcpGqKrGXH6hl4SP8PiOTCmfEbeowN+z2RUhwO34KxxBsQevkllu
	 fxzlLZXDWj3VjXzpgge1Jhv5yBuS6H06l0gyuyM9rpdwwdnZliPh6FWFlkPbkZ+K6J
	 w+ox7bu70dJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50116C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543505331.27646.15097279203505472324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f9baeb6b90cb195967071267191603b36e51283eafa790988fff3a51e9eca5
Date: Mon, 10 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665435053
