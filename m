Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED15915A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9153CC433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663194653;
	bh=anyvpwXSuGE1oJdPpHdwSG6gojb82R48H2K+qPFeKuI=;
	h=To:Subject:From:Date:From;
	b=g9zTAzhRYEQlog3rwD/v8L7kAbZsYHzb3i+yEAEwpnVmJSEjgSECj5BVdh6bChmuU
	 avpgGl7FpI82uxm+4WGATK64zvXqJxSy3D84aEzxB1SZXSpyZ7T7cnu40yWdOk/723
	 4DYFeTUNYx1kStmBqyPk+zhno6bGUYikCrfKsUHaaE9q3+/CMlnXAvVI9stEunFLEo
	 D1PrSZyJLOQOunfgbFPymBRNYMfwko282/WgUo2851neOvKZGKwSzkkJ5qoDHx8PkI
	 rN6py0Wni10wzJcMC/aykxm8qnGg7/V5+TEikMDko/WnWfVS+iOYRCa68GoU2zei7+
	 KIt9mrFXXQErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75939ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319465346.27399.7741151671351768089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a79eb36d2f8578861e1c3f5fa96cc5afb2a4f1af55989ef03ab1f9d5ae689ca
Date: Wed, 14 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663194653
