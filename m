Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E4A7E1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91FE8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661933453;
	bh=Hf7dygSXWskSXrf3V9SbhEwSU7ZU0/EKTcwUjv4xJ94=;
	h=To:Subject:From:Date:From;
	b=tlQlv04O9MEzdB33an44Mv9HcCCnsq1ypgHYo61yV5sz+6XjrPwt6evOUh0ueL0TP
	 wpO8pouLOdDWKshYcdEZAawsz06FcNASSvnyrr7Sfzt2XQDAB1ytD0GEyKEGBFRA5k
	 l6T3siHeGmUckos0i/xTDlzHww00rpp1SaVoqveLCu6Jg/4ICoXEDshPkvWHMQfHML
	 7rNhNtJ2b7I4V7iMd2VPfcs0zvL5AoSyuK6UCfjssDnBKkoyWYDTWk6cIqgcng6RHg
	 lI+OOitgkJfJoO+AC694KxMeXTDZSlzaSJhl3HqNVEZyoA1yFWERmtYxHpcgBA959p
	 GJnRgK6+c+jKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71ABEECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193345345.4322.8283220547268556394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec9c40f0975358ec37de2e1f87cb6affa8fbed6bddc97a5c7fe1e3895d0caa0
Date: Wed, 31 Aug 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661933453
