Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E630A1FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AAD9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670823687;
	bh=C5/HdK8/YdMTduTPcdsMfjcgyzlXDV1iRttPo5n0Q0U=;
	h=To:Subject:From:Date:From;
	b=mYS6FKpSIPy/nYfWlmHdxBusPlrNxgjDW+zPy3rZTDU/BNhgT6fVaKf804RcaKnTn
	 2zv4RFuokM1JpFr/2xltIs/jQ6j5C5Tlxs6tHo4dHTG9U2OPDYeK2Jm6PlMuK+7rb9
	 325KY3Hb2Amop13mtDlyISPEqL2dkiGxDQE81Sbsh5/sn5752T0c/SNmgWZI29w083
	 DM42tXOlCiRr+8ExDH0DRcMZlSXYYbe75UJfUuhZxB7xTn5g9iPBdtpAfJNzBZmC+4
	 JmH+fPB0sc5TuY7iY0nZHtt8tw0njw0QwByL+zVpQsqUB0KjHXb+SNCVb5bZZwZtWl
	 JZbG3HUbivbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE20C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082368742.19088.7452289010289395548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4eacd3372195c71e88ad8850e384a562a11c8fc24f4da068eba8e7757023d00
Date: Mon, 12 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670823687
