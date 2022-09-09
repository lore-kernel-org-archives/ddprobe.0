Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB4F367
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7062FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662705053;
	bh=8RIXb+hd7KRw0CG6MobqWbOyUTkAZ4CZyHHmovEDo88=;
	h=To:Subject:From:Date:From;
	b=Wmy7ZVg/9cQpR0+ltCJ21sgVKnxP6ZP1x0+heIP1XQ7OlGDZ+r6qqxv0yGPFXFvMP
	 jgWb83YLxsepy4KY6tDHIWRypflJwnVorZv4AQAXEYraUQUz++jlPMaARpJUULLuQt
	 ncjdloqP6vgWFwECx9irRevWJcxvd8iupcwVHQVS8yErJ9AGVJvJBD/DPL/IYoXIfH
	 8txCdAuhihc4gFtq4BCAtkq4SGlnsLu74uLnjYpBtMvuRREZiAk89qxV9CwAn/J+5M
	 aDlU/Kb2MOXkrmzSboPXQ1Lsf2MBEkP6xFsSgTb2WZiLSLFVmpvSvWSlybEOrcLiLw
	 3NEtz4wxwmpsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563EDECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270505331.7119.414370533599812407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbdb2d627ff4add58269dba82bebf99bde72f93800bd9cecff9b3b97818e4eb
Date: Fri, 09 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662705053
