Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E31315BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD889C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690716728;
	bh=Zf5ZzCmsh6cl2Hu6XubA9xPTczaQrBrB0zc1ltsHHIw=;
	h=To:Subject:From:Date:From;
	b=WxEWuuK5J8H2fVxnf043FIGvOeg/WZksgzUU88EIkaDCHlDfT1FYcHKqybUdWz/Me
	 W5LCWEx5pNpwRBiwEjzU8bXVAe/xUwBe7m2CucVYO1Z3PolOMk4Sn9zpPGBgqpHhDe
	 awU9+9nsS7vr7tFPFaSRR5aGq4WgmnHUclum8+XCRByn5Ehmc4fAB3KK0wmVUjoHqR
	 GTkcQFDG42PfG0Ejchuc21TMU9V5hlXLTjVX5d0TCEBSWAqZk6tzB3tQbg+u3XULGv
	 Gy7ZWQJ7aCAfogTJXyIJ+y053QUP9FaVNtlOb8cYAkjGAP3b9FNWHUDEmZ4vWLvdZh
	 c9HVW9BR9nexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17D2C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169071672869.18770.11332317593030115482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f959bd030460b6d19edbed4f1c78c856bf37c9cd01e309d094b432ba79baa9fc
Date: Sun, 30 Jul 2023 11:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690716728
