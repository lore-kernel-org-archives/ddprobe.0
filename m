Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD98233FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D6BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665180053;
	bh=4jvwzvm/ankz9n+P3yBVkMUXMI8EOFjCCep+TIPyo1s=;
	h=To:Subject:From:Date:From;
	b=M70CLCvvvKga5aVYzmdRx5H+pNd5zjvvJRCHsPoALP66rVWNL1hAfQfjiQj8wlEPE
	 cL5PrCFfha77DKlSHGsbUuF4NHCVlKkVov/EqcPJPiIX8wf7o6tGDv3BO7HdHyIcyu
	 AAxAn0g6SZStELUllvMRL6fpdIpoeYpkWTKTWL0sHKNfKJgfJV3ofHGSR66GH0evx1
	 LNbn5tJ60SmuLYk0+mlPGsE2t0OfubZtJbiRc2i+c+jLzniZ5YexteBnyt3XikbA5U
	 kbUFF37S401xSDbcKxV0NfqpS5c1/BDb84T0AIF/NFw8Kk+DX0+SmwAAkFB5oatQtH
	 w08GDV6w+8ZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E95C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518005333.26228.16611085462497800342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9cdd04290a6257aced126947cd67849c1577adb53b4480ec475632f3a048ca
Date: Fri, 07 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665180053
