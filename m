Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442977E
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 00:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82BDC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 00:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675212245;
	bh=Qxd6mtOOnA6jaxGKLYjXpUe8e85PDZyUqSCjPc29jmo=;
	h=To:Subject:From:Date:From;
	b=fpMk6GiMaam1GKPEdrICRCHkchfOLoPiC/uYK5u5E39Qdk9eEOzAu7N6S1WlRIq+k
	 7qVAfnUwzvrLb6H31be/AZUFi828E01lJ2A/YfW731KoYir44ENjZDgicxF961tpDR
	 BHOf9SY3PCw2s6dz7yabRoO6PgFzaEnIeU6c4aEchY3tYC/gt/Pk482FM7FEqrpo1o
	 fo3lbE8KBzGdNapevIRNDkCz2lSHfjP7yP3I7MpPbDYbAgyPSCaT6l8XLTMk/BcpuG
	 4r/qjcyGu5qFH1MKVmkIcslZnyJ4pzYm3WYjXNOfmbsaWnIS61MRS1JTaerQUCJqQS
	 nuZy7N196aDoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E8BC636CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 00:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167521224573.14154.1261864908912493647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3823bfab1b29ae2f30cbd6653f98ff9eba9cc80a0983ef8875cfe7a20acbc36d
Date: Wed, 01 Feb 2023 00:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675212245
