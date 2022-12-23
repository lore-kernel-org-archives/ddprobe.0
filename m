Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DEE15BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D01C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671831687;
	bh=Ya6h2aDqp7nG0nAyWbXpE5JDYBMMphGY2JAypjPyjLo=;
	h=To:Subject:From:Date:From;
	b=IQ50WhJeJt2Kyq4Wm1Qn4J5ta//4nPQKoUIhVoEHNZ7kCLvvpelvPX+Iz4Ghgw4uJ
	 LhquhhclX+eYIgOsp5sKrgunk9Sue4xFqPOOyR6OF7u1+x9jmysx4PWrq9LH6/yPfs
	 rA0q3hI7HpHDT04IcFm4iaHayfF4lcMCTQRs4a+Q6o2Apd4WKNPPiJVVWonHf+vs3A
	 NhgJYYcxOFHyxRmp/OZpMuTZVKwsAnR7I2Jhfsle0ai9miTQAudIUwGfq+A94mfzwB
	 1gVCaoZR4Y2FVGEVp20UZFRLf23qvGswlPW/zpR59amdpjV1v1MYompshps6qiCTeg
	 OiqcESWRnYnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F67FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183168746.28707.2179444415987577615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafc16d11ae5135770958f63f2be24a2bad564bfc397c962a2f2380790ae6bf7
Date: Fri, 23 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671831687
