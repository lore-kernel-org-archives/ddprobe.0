Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EC5EDD
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871CEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671436287;
	bh=hkavsV33EEU+c2tDzwRiXQD8ETAcFBDGcoNt7OC004I=;
	h=To:Subject:From:Date:From;
	b=TyvBS6xZApPDly3CLptaP4P5vgijmbpagBM2Prsx/pgyeCyJkocCvPEab551gDisn
	 y3mx3lb0dGSU2aKRgOS1u/HLoTh1JY+Jn0SBN3XcYD8XHdK3LJ46NFH/bWWetFABJQ
	 2nDB4vuSdxdgHyXGgh3UprhiJfh4jH1m8ZpzJHhYTdmqvIzhaiWQ7SldyxfCyb8inX
	 huUAv9uR2JSlcxpM8h9BU9bhJ/ceKgA5/xe/UoP2opsz20+SARozG343Lz85ouwqKh
	 k0/Oi0KGW0G6DrIOq4JjAhC5KiOuMLghf1PuqAx1un3hh5I1pOCDbmpNlKtFISVzsQ
	 018OtaU+UpYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1E9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143628743.29698.1641549745456319164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1670a9acbd9393adb7d88bbad3afa4c4d2abb3a9d1576d4ec0d5277d054647
Date: Mon, 19 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671436287
