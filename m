Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB41F4684
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6895EC4347C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664926853;
	bh=GZGCvSOUvx3gAFqX4liykN6Dp0H76L91EzMfr9SmBXs=;
	h=To:Subject:From:Date:From;
	b=deHBpkk3iQ8Pu82DMj6ZZNso3qmkZqw5HmbvKo2rJkAHkmACLtNNbiju7+OSSp///
	 OdpDB0s1w4TDCFwg2zDBOEHw90kfVYOfsISZzWPDo6jB8a5mXBhA2Pxs7axHa6rxuk
	 gUt+3baMJPHLbbvB8C3qNyH+swgAr9L1NNXwz7Xgvjh7/s0GyLDUDmwdleE/KALpBh
	 y/kRoqzGO243z4RYqJ7ZXpMRPD1qaOchRGLPbjm73Ja+DtTxf9KKR1Vt3kSWTlCiom
	 DCEliLr6dywH0iHCaM3wJepBXCI1SfeZpTzJf0GS8Dx+DlXC3ikDE9VXCAVZp3EN3i
	 diGW3kRfv06QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510A4C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492685332.5224.12102708694346357074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37053e318c5d2f12d9135ab54d05c113525fa5fd7e0ba7dd6d8e093d3b4d0e3
Date: Tue, 04 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664926853
