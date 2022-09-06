Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9A8173
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AACDC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662426653;
	bh=48goNgULEhsnK/nkdzenjo/s4m80azW2z6pk9FYh8fY=;
	h=To:Subject:From:Date:From;
	b=SF7ellB1uccXg01xcubxUl/C+o+Kz3F06MDKIdbrCOHHz3zCu9Wtoi8ON6wb8Qy0f
	 oz/Esa99P1pMgkH31rSt0UTaY+ESd6Aa1TcvtSUwBlGreH6aO78XPrtY1c5nV16qf7
	 BqslyJQHP9LR2ymXuvbaFuA4p2PK+PruVfHruivV7/LNo0rp15F3J55kvl7u9qdzqg
	 ich+tf4KUedHVZthGbsRhKVGf83zSr73SmLBp3LPY8PAsyX0QpN1GrAIMG0Ytd4bEe
	 FpD7wBoAHIUYsCZwA1hLsXEFRDLUU5WiNTpsHkjFR+HzwUJUoSvaURcDfbWOsigTLb
	 f5YNKhH2vwwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E981ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242665331.26404.1221540614490910748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee5876850adce9d60004ab01c2d40264a7d56a023844ea35d56a40cf914f6ea
Date: Tue, 06 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662426653
