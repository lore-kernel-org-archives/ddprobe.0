Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D108217C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AAEC43470
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665625853;
	bh=tKg1TEAZuo9PCSICs72WajYBt5pXG2Sz4utgNcO41pY=;
	h=To:Subject:From:Date:From;
	b=n3V9/mhP6rVsprjF/9IW2tUSxIoNfcFbyC02/QwYeDfgEn8giizklii4VmyzpvkBW
	 Mhsh1XLfA0nmaHTx0J41eb18yrhrdtRAwk0yhKFA6ROphUJyT+vNivJc7GWw7LGVbM
	 Z2KGjfmImQI4R5sOjSpRIRyiVCjnxjF1WqFw1PecIi1TR1aROwLhfA87CogXHMQ3pA
	 6edNquKhLgjmPhNw2GT7DTYkZ5pAreuKd++ms87OBG/a9KpGIuFTYQvb522szbS1ja
	 OU0J1d2DHB7PWZylnHb996HRDoGJCNaIVr+ATIjq3UEv9ZkEEt9ScZtd45qDjiUFMW
	 X7hdzcmKO7EiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C4FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562585335.543.12913200614329009951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e09a8c643b7f36cc68a908da1a5b8b1b4ff70f663020220bcce0fd339f23b9
Date: Thu, 13 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665625853
