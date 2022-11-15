Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB6D24F29
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B709C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668532854;
	bh=d8vY4m4Jk+T6hj0xN654NVQevgxUcGkOHMUGG9LiV3s=;
	h=To:Subject:From:Date:From;
	b=rqMc4uz+bikkyvXgHUqvXzZvrxIX+gqHTae9rzPBOP6kW2dVmQrFU0P0LRJSafsvh
	 VAJuBlxq/zRZsUSW7OwQGlYUvL0/vKJufn54KPdhC6JZZquHksxtmEK+aY5+6UPFWm
	 EAMr7oAOdy1lTyREJA43gmEza1pv4pvpAuilJ/vph7A3w6CWZ0HiRH5A7QT+Uotx7/
	 jcWtRb32NYSKW/8X3XCmNM4QTLT9BqhiBSl2rayTTXDXeSPSUTBZ1Aq6lBivmXYLe8
	 J15cTAY7IRiB/88e9vU/PyrHtL9spLO3BFse51xgEy9Z0xaE3Q8W7u6GcLT6GtP8vY
	 TG+qjurPqP1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F772C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853285431.21081.424610652390521741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132889a04e4739fa09856211919a7894b0a801e813bb3f172767519dcb04dd27
Date: Tue, 15 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668532854
