Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBD43C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EC5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665510653;
	bh=vpSKCjt6BtlXEh2wy7ONGMSkUsxImZD2rqeHvbWMNsg=;
	h=To:Subject:From:Date:From;
	b=crdu+iqdWmv/60/Zifkf1zFW4P7vKiWBl4xqWv58t1ABxS0vG8InVCpGEfYO+Lvhf
	 e25g2sX+LRHQAkDkcYUps5MNukpiqMSrpv+UgYf+6zv2Pt4Nfztcm6PGEdZS+NbcJW
	 jlEtz/IZH1AoBKP+ag2KKQVGN32QCRwT2H93XNLl3zeYRRdvYgLdPut7zD9OKU0pLJ
	 l1FrTmubxWdL1yrd1NUcTjzui/kI+/5KghQUIiU3M6kpbQshJ1/i76gpI1pUb0pGCT
	 2b1z07LB5SDRhl3Z65xH5KSZ3gkQVMEz4CPJcdv49IVafn+TY15k2y8g1bBrBxqFSz
	 9wLWeE7Xt+IZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1D9C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551065337.1313.179107865837700280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e09525987d41666480eb36e205e3d8f254895722c121353089b32f07ce0422e
Date: Tue, 11 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665510653
