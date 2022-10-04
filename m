Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1214210D
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1AFC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664873453;
	bh=lu/OTy5fVVpF9BHGT/MHCOIGiShEJGDkBdcpGwEKwDI=;
	h=To:Subject:From:Date:From;
	b=Yee7w1NTWjfuAd6W9wx7cHWdk1U1EtkPjV3bWhvSrH7iVglM8lxLROSA2B5zntIoq
	 vOGcV93LpuQWJQvX9/uZIUZoGn334WNAMKoKgH8DY9q+rWldSkw/a+giyK4U9HgEyu
	 dG8hxbX5UyuNBQLBiCscNoPIpHW2586/Q33FRFLX9w+7Z1YBAutPQKlMNCnakx5zqy
	 FDr5lfvbEJ3UnypHXYiNcdBGpVfw7zfsnWaHAebUB23K650szvzs8tOOardvk+piXL
	 zjorFxJmTjTcXPKrm0CWTnYdFHcmX2Y7G2KNHxibtEQeHou5/TCpHqlnFBn3mjN2QU
	 Ypi3PjWgDOVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51331C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487345332.13492.1323374161897972823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3eaf55137abe8b979dfe1c57cbbcf73f480d72b4c369b999b4e65e2c7c1e622
Date: Tue, 04 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664873453
