Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5547B
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0E1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667148654;
	bh=+JZdmMq9ViaUE/OMYd9dkXmo62HCFXL5tvIyGc+wYRs=;
	h=To:Subject:From:Date:From;
	b=Dqy2RF20vac3UQQm5ksh5d5/d/DS6x123t15WzlIxNN5jC7raZiTWD/Y6hfoW3VrS
	 R/U4bSY2p1CHAXdvi+dxIN1So9r0kyzyW7xDlqvSEcDgRIa6wei2IYtIAtLq48B65i
	 8FpW0bSsD6FaOx6pdT5Rv6+WGjUL0RtSz9v69Im+BkAPBqDlA2VzYFpKcRp0GnB3q/
	 Hh4VJKBd4GUwzOsHSGElpeibUJ5G4zNtnxlS9YHl/A0RMBwHP96ckfq6y61aieT6Q9
	 odhaciUFxgzxgmO/zB9OU0DWBpm3sJjPC/H3xbYAJbF1At9T2aimRw0WkMQ8a7HJAE
	 AxOytSdcLPvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFF5C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166714865436.5012.13598799971807486795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dea6f3ca1f5f7ae5ae44fd544a2338d930a1c5246eea725fd77042e95b27642
Date: Sun, 30 Oct 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667148654
