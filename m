Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B997315AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710E0C433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665484253;
	bh=M3PVrNLYc341dTeoEg8uRMUkV53yWFUlBI55PLQxjVw=;
	h=To:Subject:From:Date:From;
	b=TXyPjOhgFb+niTy1sKjyK6aqRlVv+o8in21/yHL7zI3ODuqICkndondjfMeabWBq/
	 CDyhuaVwzsl5epadpyu4XtCdhYFfTmphC0OXyqa26OqcOurCPW3/dVoy1hvxcekhgJ
	 X7f0inGNQrmSvW3oTbikal/59tFUJnViQprKFMw+N8syaFg+j02HhgypQoZSdIAW31
	 r8WQFado/YgiIE5eL67LUE+J0c2lQB5yCzhBescvtjeejL2XKrkrBRXw3+AfdHpcs1
	 6ty11cNhU8CZxt3ptDDlkPmGkXeg+NEtWJLyMdw8Lff1uLEAC9nCsL29LD+PbWIcJX
	 7FhO9dCdJpuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56908C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548425334.20265.1377130498238700217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6adb737ab0f6aba49900bfcb8b39633901f7dbe67291576f84da0f146d30545
Date: Tue, 11 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665484253
