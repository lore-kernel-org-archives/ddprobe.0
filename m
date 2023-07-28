Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7511CA0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C6BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690555928;
	bh=sPgAaKOFXTiPCvtPRh0u6Kyq/JpcdxqzoF7loOYTgCs=;
	h=To:Subject:From:Date:From;
	b=YYBSyWjOxcx6vZvrX7Ca38zjSOU0n7klWLYuYIWYl512IsX8J3M8rhBRmSweGKJMK
	 lwsDPA17EGh+zfDpViobAv6a2qPVVHTW1KrPbXISnnJVUGthXQ0yilkw3zA90OUjP6
	 fiQKzZ5IBqG+TwX6QWW5k9JHzkEkfX16leTH6RwiSwfX4wUbT4kbhyhMBYVj4JHSa4
	 16z/FMO7cUIr7Kxu7pIC8dnezSK+lztd0MNiIS1se+Jhb9vJv+i5oXVSBPq5rsQ4xK
	 /PiFIJZ62atmWIsbhC2mt8nfc+0hw3D7GhBiWhOgemlwWOjap45P/9X5Gsq75BGJQI
	 8erS1Y8ihzxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF2C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055592869.26627.5039307128618135582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff151d08c6ec44fecd03c295f677c025d8277494b5565b0736acb3f115d5e6d
Date: Fri, 28 Jul 2023 14:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690555928
