Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F252578
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758C4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669812654;
	bh=OUgR50ZwH40WOVkxrg+r1eczLKzT1TxKheBi/DxCmNs=;
	h=To:Subject:From:Date:From;
	b=Nco8yYsUIs8azIesyyiJMXwyVLljfEO3tZ5apUGv4QsvItk5aS+h5Gwy4fy0iXr2c
	 Vg/BGjyzPZDsZ9WMQ5HjfXcUHstu2VRKfle91Nrj3NsNwsr6lulkSsq7Y+52SYtq0b
	 App1LtL5w3sOPoZv82eYE2l5x0BSJC0nt49aZno69FhyUCr/NbaePkx3vx3w/ky6vJ
	 BLua+n1GSIv3TaZRzs+REmCYgKFXSh7wLn1+EVDHV5s+Rg7Cg2DkPdN2iuk6AX76Uc
	 wSIE0BYt7xY3GgAHs1ldHUXbrZYAmMdh+EL+DmCkXJL3mHx+7l85x6XqmHooZi5ReQ
	 nQw1P9PUSuwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A66C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981265434.15550.15788895340187470500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf211279f2ffc0d23ef908ab6a49c387dc484d323ecbbf1afe2e18ad8022675
Date: Wed, 30 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669812654
