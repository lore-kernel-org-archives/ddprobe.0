Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304981922F5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766291034; cv=none; b=FPu+DU8Hcwl0wp8ch/oS4Pka5pdTMeo2DrwrYXI+Nft8FsVnckTp6HlYfiKhvT4LTVSWqXZPF21wkq3lAy1IH2cfD8LGNesGc7Z6wwoY6NnJgLGP91hpES556EpyvAqZwi0r9QkC3Zaf3FHj2BfjfzmlHMDO98UBkQNx99NvW3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766291034; c=relaxed/simple;
	bh=TfUF+d4j8T6q3/6/Rk40moyGdd0zhjNIeTPe9lqRReA=;
	h=To:Subject:From:Message-Id:Date; b=Vqk56aNR1MdlvyiC0dmCie/WpIDW3MzXaAO3nWo/R4gN+KPI+Z3W2DA5P57oqP95eJYJhb1DAGK14D9LuJ0B8AQjKiwcRpaiw93rEwuckFodc4OffTbsCb77cJWsjTiwmAF66+8FYN+g1+zwi9ek32kr48Aga2/H2EXJENVzQtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gD5Pb9dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gD5Pb9dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6278C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766291033;
	bh=TfUF+d4j8T6q3/6/Rk40moyGdd0zhjNIeTPe9lqRReA=;
	h=To:Subject:From:Date:From;
	b=gD5Pb9djXZMTez4v2yJ4f59uPciS+hKTGF1AodPW4M8zT6c/bYISdau1/1iKDpkvo
	 bFJX41b8kWcMPa+MEbs+RppDQ5TwXao0Xtp1orL0WQmWvKgFjR7PH+RWZiG1MxrZAa
	 Etf5KTCqNZ8btUV+6lFWy7vg01j+w/sstfVR59iZ/1Wr+D7pVWlghCdB6+CjyhgHBm
	 VSOqwZKCRcTQvaSTuGAYcYzfleNbZB18/GmoJjERYmOKjHWmqAC8xwP+/i3r3OwfDW
	 WtGY1h+Wo9329Nsbc0pT4fmdATGzG8cACUmHUGvcug0ipcg8nGE5GmeNFlO3QO30Aw
	 QR2qOWVZfX9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0377D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629103370.788.6557485287477638860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0121f1ca7764d4296dadce62470d028e970289d7161699c73281f3c3ba04ae3
Date: Sun, 21 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766291033
