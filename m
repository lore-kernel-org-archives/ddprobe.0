Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B53C125A5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D528BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690272128;
	bh=Gwly8fjRoiBjAQ0zv62gLW00OOlrU1GtzBi5+6uTQnw=;
	h=To:Subject:From:Date:From;
	b=O8LucdI6bnsFmcNElx38CQlqnc8wiQ4Xymv4rVmPhGA4dRdWplunqJhT5j/FgqavN
	 fM6gFdePUycU6hosHucvCw0XcO7MkiUWPq9DMC8LOi8lZxeBm/RsDkK6jiCB7XOv26
	 pdhCfbtiaPObPpVZHkgfKR60owgjMJHSI/DlYGJVZ+zUdtWoaa4PIhOTcxlppTx6Co
	 06/38GmqcdlGlADN3viq3cs0Bu7Gq+BR20X7woW3oikf4OMqda0sFef5+heA9vQrQB
	 r1915s+CLWt6li2+RS6B/SsueWVnq2EdaFPtpcwE/dR0vy8MaLVxenxW8U/fAm0Tx8
	 V2d81bEPTzOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3897C00528
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169027212872.25412.3664551643652486058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3271e1e0ff6173b12a81f59f6ca8c8aa884b3a3bf34b2398985f3c8916fd9e90
Date: Tue, 25 Jul 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690272128
