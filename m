Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BDB1116
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701BFC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669895454;
	bh=gFwgc36jZdKZXP54qEDQAoesjcjT0x0iD2mUW08Nzdg=;
	h=To:Subject:From:Date:From;
	b=NQwfzmHt2v41t9OQ/PV+q/bpf/hteL9AAnIxEamv8jAYXJa5TXRmJmYI7XXgcx2sF
	 yevpco1VT5n6/XdfWH8fv9pEUyz8Tm2SAh4o6Moy92mBnt/wk3MjXX+/hM4imon+v8
	 xGsO3G9XjiomTONTQZe0G1/As+jiZgbVLiNvKnKcwn8zMhKs4KoiDK0n+uy+JCRAY/
	 6E35CCwDyYEVk2SBX8svxvAgSFYoyvsmxpfxd61IMlZiP/YbMYkVTaPeZBF+Vq/Mbm
	 JQH3ncLu0o9qbomHAz3uBXrrKbSm3X4Du677b4V7gmKgn0FaclmQbxD4jaOm36ykpm
	 JYkHDBeuS2wJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56045C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989545434.14141.17513052167281306134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045f5606da2b4095cea8eb98d06fced314d0a18367995b852848f0019bedab3e
Date: Thu, 01 Dec 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669895454
