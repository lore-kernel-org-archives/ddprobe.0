Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C572B2C9D
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7223CC433D7
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667401254;
	bh=H4XqVVXFDgF+lAArAGfLenNrABhfz03R3cEBDiaicis=;
	h=To:Subject:From:Date:From;
	b=P4GhrycDa/SP+rPSMJ84uYRkDKM+5CCZAndL0CGtVqt2HPo2OEJqEH8358Bx7wycI
	 b9MVE1Fol2UR/tTgp8omqEN0k8ly0U9c5HgQWG7PUwrzK0EKcGH/AJzkDQCXrHbR7d
	 AXFV940Sx4vABBctYrg3lEAVu03kEl5Cf44F8COGXIGtDVqd5nJv2JZQba/pyZPsJ4
	 LXvzEHnOcpS7K/ok2ebJuccf0/z6Zea91cL3UZiBw9oICJcv4bfztSoEQKzIaa1C+g
	 lCeKe2UEchRi1oZTniSfYwFvly80IborfX4r99eEi4gftw4xgDOHwgD4emJkOcFg3t
	 q1WUlvgg6DRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535CDC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740125433.27266.3528888004766679572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b152baf650b328a5d140ebd08c618b4b2c3af92b2af909a33a4bf0be7f78825
Date: Wed, 02 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667401254
