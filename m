Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B472F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89C91C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672581687;
	bh=4sw1YJYqTDFz1vuGW5KupzLwvyr7Bo6WSkyUsi1P4+U=;
	h=To:Subject:From:Date:From;
	b=fwMmxUSWCC3wul5ltrTgbsN77Zwsix0S/WwGtSNKGkSvdRGu25eW8F9W5KyODtmKV
	 KZYPDVCux17QMpSMZh7JCeJncfr8jwWMXjDXj5xmbuBOgiAzzTtbWmJEL7ew/VZhhh
	 vhOcw5sBu7SHhjQ0M17RdDgbKB5eA5bYjI7OmVKsBbQF/IHD8sIcb0ERh+NpBscZoe
	 pj6nHz3JopWEL8PE8LYuErcrwbp+aLlj/PU1kCvt9ZMS6V6cK0a8JpOZGnunT7daCT
	 v31wAbukRXrAurpW47XKLy/JlvfegI32Zi0SLYWqMztRI3RPVOsHRJP7c/kTUzp8uA
	 nxmp8rWynpi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CABC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258168743.23106.5995230648348655760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddfab0a3ab960c4cad6b2931b03a6b084a3884cd36172959b59fa14f77d5ff1
Date: Sun, 01 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672581687
