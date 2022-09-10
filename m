Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C5EEC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80843C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662806453;
	bh=j4ohAP/D+idpeunpanK3l1drX8+xgzhsEfpv7BO2yNg=;
	h=To:Subject:From:Date:From;
	b=u3Rd71hpaaS/WcArD/idXlLhU4tQTmt4S1Awg+Jjtz4xZhWmNTGcTiIAnyTR76OPz
	 LdOxcZ8u47jCr7FY4ZhS2Gq9ObBa5aBeoODlap7YiFOm1B4X4nL0bUovkWtIERI6t2
	 MmpJiC9LN4KQjr6WFXfOiWlLRBhaFW/IbTUPkv6Dnlqb8NJ4KM/omT74Q//AVHKIVj
	 r+zt1DJjZEejh0FZERNEeIsMmVxUXc7rOAhw1MhbVrkxIulMcCcU6d4seCEzN1L7vm
	 n7KSUVcePlhqJYjF79vvtWvnSMp054M50OQHinAb0/6ClEx+5bGpfAJtGorn1NrXh/
	 c8kHNLntcWPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69682C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280645339.3756.11859605990362905236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333b9e9eefa9b25cc8e2bd8b7738a205085560036cf0b8ecc215fc4877f59a7f
Date: Sat, 10 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662806453
