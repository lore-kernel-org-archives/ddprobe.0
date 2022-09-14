Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C312315B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A1BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663131053;
	bh=TmjjvELQiwW89fggmk/B9wI3IlA/eINmAigBqX75UT4=;
	h=To:Subject:From:Date:From;
	b=XtTwmq+hcb3h8s7gFHAtFNsKA6Um1d9WNR+g5hBQIw/pqQLU12ePN3n9TQak2w1Ds
	 /ybWG/Unp2C0mxRQOMi3QMzGajPKBUFK6C2Q1Hea21FLHtJsv3JCivNSuDpcAqEaGQ
	 Rs6JOAPpeDwpZCzcjNUea1jM5TISZxL2rbKdN85K8EeBm16hX/r/ggKX1gTVdSljm+
	 Mg/DnlKwIXGGbMKbJQVvP2jtX4tOAQPXoPoEp0NOaBidjHMJA5z8ltyO6NuOxQx4vP
	 M3nYm1c6Fh30J8UKeAYd3PlyYOCmEf0/FT0O4FY+nYUSPVEbsxws5wXcibG1CEw02u
	 9orveaL93D0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563DDECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313105332.1223.4271544528783076613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93bff864c878ca97856e0d8610d0cb5ab0ab7bbeefc5cbc5e45be34a0bdd0e6
Date: Wed, 14 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663131053
