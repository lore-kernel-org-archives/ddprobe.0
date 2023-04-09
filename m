Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53780256A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5D0C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681063266;
	bh=lIrKwSv/wozUu59h/xvarX9pvhXin8Aajsdwc1p2TMk=;
	h=To:Subject:From:Date:From;
	b=e5wjjUKo/uDx16rN9gLiD1fCfxCFOSFFltxbwOAP2Cc3zEiUvTZKN7/LV+HTYvkO8
	 U6cNTl+CEDm9w+z4+JYg6llXdrvNFN3YF3p+68qALZH/y0lbftB0TyUb672R1zMWTN
	 LLW1PjgQM1LyY2MdYoe50aAUsQ273PaGPj41rr9m+UX7pDEHwxpY1GY4hXJXKNHVKy
	 8t5s5hNUcxu6FzW1y7D/eP3O62LxnZcft6WypYfrMXn+oZ157ApjNXoVvJl+WsGOCU
	 Y2JZcb0ogbdgm3uV/EngRIEMQEQDrAdFzg6Z3TV2hXjoER9vrZWYFJbsbIHqsILQL8
	 y/zmTPLZ1cpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE02BC77B6E
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168106326580.11998.434929129136141041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d1993c6a63e9f6d901d10c531314ed9662666a27b49325622ab3f7ec7966d6
Date: Sun, 09 Apr 2023 18:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681063265
