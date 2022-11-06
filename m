Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE5228EC
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767A8C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667746254;
	bh=ZKQGt9aELvAjMTMuT2JnyhTr3mW6l3Koi/h5k7LxlEc=;
	h=To:Subject:From:Date:From;
	b=Jo6DX1nW09DjrCbbP0+O2MqKl8XF1CJUyYWBowryO9BrZwpZTO/oE/RzEXMJNyq5w
	 ZTYfs8BiBRP9tNjC2K02me9s9hXacGvmgA5Er+31Rh7Sa9loZN6cUnN75dHoP7OcgC
	 ifAkD1MonKSbHpVVZ9iCoYkZY9Cxfsc7XCloxLmQ4HwRo+5HEzoBgpfbHDP8nIE69b
	 ahmGutIbPYxSFdbu4JDL1iAJMhZ0BJGZgNsz/ngHRybGqpi7XKNZ55zQR706FEJVvg
	 nfVDmcRH0n6Q+FmIpJgZqMxrLS0yzSDFNS8YC+IKLUjYhEpHY+y2Uu+jzWAXOjuzQx
	 +g94BfzM4+Vmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BC6C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166774625435.21057.6077161781902028347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd8ed06677d99684a33e2f0c663ce9872f28531001688158cd83cdc07bd941e
Date: Sun, 06 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667746254
