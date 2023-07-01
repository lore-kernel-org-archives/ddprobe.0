Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6483765D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D143BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688180648;
	bh=HTvDQL1556wyaxiu023h98P3zKga5WEdYRRErFoNSls=;
	h=To:Subject:From:Date:From;
	b=cNYMYsw05mRHIMHY4XUbaoffm2EcjA4t7MbHpwl99bErPLb6zNkMq7Ef5l4M0VMBV
	 bWfVyUGu8bWPCTRT2LZGprxNVZDG5GAsNutOZudA8Ru9eXgI0LA9QQDy5mUk5rREGs
	 6L91e6H6RWPVfoCPA2k3TqZH1/8yB4jO2lp+Pk32V3V3kKrAvB6QKJyRReTQJzvzPA
	 hHrQDM05dw3RFTnX0ANym9VGdSMRyAcfrGeIQCRJZE2j0SzL2tQZUEpkAV7rLRiiP4
	 uidbG1Gxtf2F8esxSf/pVo13CEU6nsG7x0rIn1xgRKySK+S5e74cL02R1VEkQfcnDY
	 KRjQQXZN4CeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4772EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818064869.14500.10440755353692594539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599b15722c5abfd0584f5c759e8979be92462b3f4b4cf07fff034724566e45dd
Date: Sat, 01 Jul 2023 03:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688180648
