Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF65168BA
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emnSpK1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEADCC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696670228;
	bh=dunYdPjPtl02u+d2SUJv+/udepZHDy68YB7BCyHmy/s=;
	h=To:Subject:From:Date:From;
	b=emnSpK1Wqhjx0vqQU6ZqdeZv5s73uiIbCiudWO8mlBQXCDlDNbGMH9SyXkMiowxOe
	 c+bT12qgmlMdEq7/LZy2c7S6m6SRaKhamE/X9D8i620BCeJ9C78IHYmuDXNbrEAyP/
	 5xXvBud7AFl6LoyDwQsHgwB6W7lrOpAsO+HmJOhdyQF09/cw3koHXstrhgwEP+RCpb
	 QpkcNtwC2MfDNVKTHiBqhFUO6NEmbhSwhj7TvxRNXeHqgogs+/EHrImTJ2KRDzo/XA
	 6Mty2Q4sRBr1mS2qSgZ2aHxuHdOv7QlmstV5glsB78Phe7xTkJJe5A0UHnSiwyGKBv
	 2+D7/1a9R26ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE493E95A60
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667022870.11069.13470568026546848027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787acde303f7e0d0d95918a1e43d5f36339b1bf2133dac6a77b8571639fdcde5
Date: Sat, 07 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696670228
