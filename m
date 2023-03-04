Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317707E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E63C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677972425;
	bh=ter+cWh7vqxxYMlFYwKcIR9UMlW+uv5xAfxM8TKq7qI=;
	h=To:Subject:From:Date:From;
	b=Czmm1RSr31z6MvdBMTtMYoca/jek6VNLcNEUr/XTK3duPF8sJW4Uho/oMkP47lvWr
	 7WPjDIjyULcXSbXNvgADS809GJ1HwxqMhkB0rRP6C844H9J8O3iutVmcCrWTrsrxwP
	 oizWugZo6E5Wiio9G7TMPcCmRJ8BBdr5e0FewxSsizsj+U4ZVNO6vfBKaDndiKOSGK
	 hpVvcfD0TNHUeIUTH/YEQDUJIiWaF76+4SnRonswRcrAvSiyE4WMVkuCxcfxlCEC8e
	 SXFcD8fiBKWu4EUlGtyHTyDPMGo1ATaY3xz4It3R3dhz2HyQBa+YpTlS13qtDpaZj6
	 ZT4poTruge2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6206C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167797242573.13603.7129989178225320770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17119557d264ee102b0581606562d1cede4234d81c6426927f619ca0bd98c3d
Date: Sat, 04 Mar 2023 23:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677972425
