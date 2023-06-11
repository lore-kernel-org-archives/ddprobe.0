Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1636523E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23650C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686501726;
	bh=XIKX/UCsw4UAkcnudMK2k8NSPft2sODNwaw580QWuUc=;
	h=To:Subject:From:Date:From;
	b=S78zUvPzjPvZPdgbFrsjNhdHNiMl32EmRhqne12OGCsONY/WMvZ6DCHeNwtGVgOMp
	 CpN9MJxyTNRuI2p5RAnT4dnyaXkUGB0aqEm4GU4lbUzybC3dhkF5ruAWapZ6N+HQG+
	 myE0rmyVbKBYE4Vpa7TLUBGtYUAZul/3BeCDmQmjPx2IK4rfHmIvwooOYtVJrjWrk2
	 bvu+Y27s4+2c7c4I1d0s2CSvtMEMAG1USxyowZOgvjKC+cEudW1xJ/GBk70PLKRHRE
	 4aJaisXPMFaGnRUDT2uIBGDKg96qSueEH4rgQthwkGTpMehoguL9Ai1KkPG8y/21oL
	 peb0VmQLKtSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC5CBC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650172593.20717.9224197306042995393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22ae5b2498622d4fb586c98328531c628b41e596c4155ab9915718d30048207
Date: Sun, 11 Jun 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686501725
