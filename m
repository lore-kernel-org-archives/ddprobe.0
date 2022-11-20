Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3A036C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776A1C433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668906054;
	bh=TcQv2uFLilD266N96nPt3QPAPd7qDB92lp2ng8hscMg=;
	h=To:Subject:From:Date:From;
	b=S+aapSJaDx9Ing/dzoe687QU8qKAaBw2OS1UPQccPS/5m7XV6Po4FPytfXqGuMBm4
	 3bQ9Y91VrM2Kv4DS6M8vM8U39bINJ/6fP03geSxvzxH8qmoRF2cTfkw6mNVL6WW64h
	 Y7K0wb4PjCar0lV62o6p7HDOxg6n7CSxHORBC+/V63fKH+OnxyRi6ODMJrodzgSWqA
	 +M1PluzTcNuekJKCKQS6G0zEDsU/lZ6/uD1LCOlhDSXtvVsq8Aj/IEcCSss0h86MXi
	 Hmlnzr3ZjVLtOw6f2FAecDIi9xTEnrRuwcjzfgpS+hPrnKHHMUJz8gkk991V0nAsl2
	 WqyOW8UEgYYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB7FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890605433.5190.18135451234526456242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb52f135b7ea382462a3431ea19c06ee57e2398e961b283e5bd4e4191d449c8
Date: Sun, 20 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668906054
