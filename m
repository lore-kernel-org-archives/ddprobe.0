Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07F87C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F91EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668476454;
	bh=91YoZVaG93vGU9VZLbpnGYIWMmhLFGFnPFAcq/dYU0Q=;
	h=To:Subject:From:Date:From;
	b=qVpDItsjcLII0waozkaWHr6oLuVdu+RZZGLG9/GVU1hE7v/5Gxq9suTPs9hQItA+I
	 EkP8izA1oCzXciI8acfziwxA3G8fZeLJ+nK62ziz7YvgR+rtYNfewr/I1dxLaDIQqL
	 hwHeUE+7DzA/HfGJYZjYX2eo1FgZ9ki0ksini+9USePydaNi61N2gMWjPfe+44FXUe
	 TXCW3rEBTQG5ff8NmMIY07RcLZj2/Sx2cESskUd+oVbTwDDIne4xxLtRt1JpFRVptf
	 Hh8mCbxJ4Onr4ht+1emz/lnHQciX3Ks4A8BPzFMpSR4Z1lX/LuAwFdFry0gMJiDdbY
	 8W/1PXE8nvCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54449C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847645433.31460.8295431657642524492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615a025db61fba431f73940592ea94ce2bd76d61d6041fb89d2d5a24be2b7957
Date: Tue, 15 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668476454
