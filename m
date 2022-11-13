Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE965ED0
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80839C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668328254;
	bh=aQur0QpMi6x+1Z41GfDxafGaS1/+hteJpTDgaE/u0q8=;
	h=To:Subject:From:Date:From;
	b=J0DPOBG9USOCadPaRS5nKRlfJSJasyveSoUDlUetHDE2OW/n0JRUp9UUsZeZ88f8o
	 G+DjB7Qfx9BePfaS1En2Fgv3BCYinsVJ2OXsPd5NPm70mJ9vSqNXVjWsewrNU5ZgsL
	 0088v3GIH3128Let6lV32m7/8ywaDHUOKayiPiAW0HEIB4AXZ2iirxzUKI/evvWa8k
	 Ad1IpYxtWT15aR4Y5qcVaBC/2gGXieexGQyk80YqR/JuJ88+hgvRQRiipvIBWagLUl
	 RMWLmZDc1RkzlWGzh8EYIXQaJYhV0T1ENqa1N0XDSqjORgp5k7froMuWQvutpkkZqX
	 EeJzU2W+iJuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650A6C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832825440.8358.2653789475155436642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7945db9150213dd175ae115d6ddbe55d94958efff1ccc0d87a5e5516810def0
Date: Sun, 13 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668328254
