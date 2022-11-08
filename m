Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA83728EA
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B36C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667875254;
	bh=ybI858uoyBH0++iwywfLGftX8Quy4/QSCkHnXZCsVF4=;
	h=To:Subject:From:Date:From;
	b=ikdRf/QgA3BjCLYwYbxn4pm1pROicC5TOZSknHjpamhyJAtkXj5LM7PnCTwMJYRFp
	 s7TVX+4AVq1WgI+3FTSaRPHhLk5nOOK4S4IT+vgOkUjtgHfnP50fkjbV5f2vW8a7wN
	 nAPVCczQHjppikLeCSNPgrrXGqWQ69344QnPJYUkJ6MHKD44WDhLEcPq5O3I47ZE8v
	 Y9VfQmmDdHYFLGlmZbCQCLjKCAhbORHTLRPE0StuEZ9l+nND0FLsVNxcZPIxEFXbQ+
	 9fX1UtLFcfnaTqvpko8fEyM0Y/N2oLbmlJp2yltetDDxkvZIKxR0wrIc7TD1Rt8lnI
	 DJGiNDLj2a6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E16C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787525434.15507.922322109365275435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56744705e3e30ba6850e506b6c7875e93631912c30d5fa36e627150c9017f870
Date: Tue, 08 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667875254
