Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D8117743
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7fwq+Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D502C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703146696;
	bh=V/rm97bZah3QWbXvJyRvmkNMrQ4nQrjU3eB6HUhtNtc=;
	h=To:Subject:From:Date:From;
	b=J7fwq+YsV7itnI8YXWiKf8E1RPbg46T8+GKVDpwbsHxRmF7YQ+CLacO72QxmZ1NXo
	 TcljEy9EgsQW/D43qBbCsLuLBtWpvs+xrCsFai58GUVHOgH1B4IicDfh+PBlg6T4Aa
	 boeJj39CEzmk21JpN991D26o/WgeTK4cd69uQ3ERE4/kY2hh0dso/2yqVOIxsgX12z
	 Ii3fwNDtgp7L6udUWetykdYAL9/x/aN7DVP++bDeJUwwyV05n/3KmOqcsDBmCeWlzp
	 IVi4DBxA6rojyF27HW0yaXjpaiUHJeFesx2bxJnZsQCM/l+231mwToU2DL2OWIBEQN
	 RxGuM5P/ydIkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EF4C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170314669637.22811.13132099209252211870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ec72665d576d6c39cff6a06222e75e564a4daec943d9611625125f114cba75
Date: Thu, 21 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703146696
