Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328BE7E
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 00:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B77C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680483365;
	bh=PogAu0yybxQZxeFsNSR8rRtrJDjp1/BTDplB9IkaVlk=;
	h=To:Subject:From:Date:From;
	b=oUrBslMFgSRvfGH3iwRdQTOvJl/oh86CNZDYttSfRO4KmBKa/CIwf4lCJjXc3wZbR
	 mqraMJErtmOBwEWdXTlWUAvqUULusTCiaCC6VceE2G5gzpw3vw3aHGv0sbRdYGpKW7
	 m47aeOXOjIqHnGB5yc7xobImvoRRr6PRUS9mCZMKyScmHUgapW14+5EyhS1MfRupjC
	 2wzUcmXYUv//aVocCC81ZU/N69sRRUo4JvIsdFLtpt0ix7E2MZUtQ3PypwGFvm22H9
	 brtPl83+pYAhsrBLNIl+yEICFWfr9/p/Lg8jojWAHRaTqO8mgRgv46/FigyndP/uRh
	 ctHQ9L9MPtSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16BFC7619A
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 00:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168048336578.18163.2253779427688145333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d07202054f8d4d3186250b3f3b2acbf8fcfd778364a88f2020d0a4ec4ccdf9
Date: Mon, 03 Apr 2023 00:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680483365
