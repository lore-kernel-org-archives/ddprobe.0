Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27117E
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690EFC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662220253;
	bh=HxF9vP6UnF3TW3T4OY2B4Q6S1RgVVSzDnlevwEO0RVc=;
	h=To:Subject:From:Date:From;
	b=lu87O/Xx/hQzbM1n0uU28gL14n+457l44ByPOOpwGi505F9jTmbCZpHf5MjG66URS
	 izJfJmyzKx4hptv6Zgu1ZCizsDgoJBH+ero0bXYfB85Kfg5+8TITVA+2sIryeFXsC2
	 dQC69fTuXt9fWpBFRE5YLsuKl/Qy5D3jmn/S+dhzlGUznCoGtab3bQleoBVm+cLd9N
	 H68TnkyT4WgVWYskYe4qN2XesDVPEGal9Ec9hd3viawA4Sg9ZT7vwJhhN3i9EN1Zg/
	 BsKiLW+e17ofMPvXXA6Gpm3ZPC9N5JJWN0tsSoVZD9M9lJeqY3s8ix2OfL4D9LpB/0
	 Hj1wCgs/CTvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503AFECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166222025332.31628.12680185467176985184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e23f2e7a2007b488714e8d4e4c8a1eaf31fc3252fbe593cfe99b95e8f81dfd
Date: Sat, 03 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662220253
