Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25087E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2EDC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665313253;
	bh=6kZHgtYEnPs7/xwFklE66uWU0Uejluc49HMX1XBaC/E=;
	h=To:Subject:From:Date:From;
	b=DCnk9hEegS0X/ZTGqeyMiafVk/BmDnSjTVf0Rn9N541+utCPbMlQX4wVJMEIV/Kxs
	 VhK+DZ1v2Nq4/PcazPdEFrVRlmn6MHpt2sJy7UZUzSRXEyGRkHUdBFH6LngMu2tLsU
	 gnZzRFkQthjVvh+HKJwuzwC8i4yCnzfrk2rlakiz880Z7dSHnXiCynzoYKk+2YsTGL
	 aP9PUuMP7nOuaWBoGL90El5txeMRo3lzr/avL4VkF6WMw5ptSpHpwdSEqs3HZJgiCh
	 fRJ9E2xpy8Es9V+Oq7FnBi+eKHbS2S1fqcVQY2/7f5X8+N3tYO+ImaHnQx0al3haYK
	 cjuoTAqG6X+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583ABC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531325334.3743.14195786749386054106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96351c79536ad7f4dcd751d598785783527af3919ec6e6a5fc693919e18ff8ef
Date: Sun, 09 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665313253
