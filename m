Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDF233CE8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzMw0JgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83141C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703287696;
	bh=8JTkmaAoGF519f4yy/c/TKbXN5thPXRA9WNYUOU6vXY=;
	h=To:Subject:From:Date:From;
	b=WzMw0JgF6xOioAs9nx0/I9NbBZHJLA4KwyaVZoBeK3+7xwoVCrD5vxtRKdQCfnP9P
	 2l5DrJidSP7yY2xtc4BQH1kF9YmMHwYnaGFdlPXWzlbSFQXxs95rglVZXKJXN2n70x
	 5J/CpIXa7C0+EIH/+gAXxRXbVwlWIGhNsBO9rCZYRbSc8Gem2tlmY4DaSZY0HLiw2E
	 WuSkim/FxX3gt+AlTyLqDFSL7GxAWe0OTA7M+5PNBuXBZDc3td/8tKcespBd38pUaf
	 fdO3HO5Ux3mDHjDaknkdpP9iqJT9ERsjVfYE+HIWky3e07tAHOz9xkc3bTr2E5SxL7
	 aMnfCMMXNd6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657C3C46CD2
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170328769640.24653.15238810677109694538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f253f8bc4eb69d5aed5852311caaddd6831dc8782ec253d18c727fbf7ed4d6f
Date: Fri, 22 Dec 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703287696
