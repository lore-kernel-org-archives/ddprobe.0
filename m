Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7C917E0
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770DBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665585653;
	bh=P1Yk9UgeVGSYjXIt5sRrxsHdhF5wvV4Ug0FXY+wnvEM=;
	h=To:Subject:From:Date:From;
	b=tVtdKlnK9KuQpVc6sFCrWoPO7PE/ASAkCEpl9ueDH4YATpQoJwCWZp5NQS7yYfPLr
	 2pb7IClu1CPlCCfsUW8pmDuo+2ogiK/1Qd/x/tk2HABdhvut03z4ED4muuNBzc1hpx
	 yP7G9ZW0cs/+rhurZf8q6kuEGYjURy28seqXzhoRilBjCKzgQmwjnA2J0Mz2YZjGuz
	 guESZd+YKGv0XmZ64jP0lP7TEtTteOUSUagnCPnfeW5BkPTJQodXIKB4G+YHG38ytP
	 MDMMX4J+5BIk+KpigHWp+RQhdZ+YsAbzIQ9pRxLbPxG5b4gBljBYb1UZGwcQLoQTIU
	 nx8/dNr97J8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7EFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558565336.29527.2616614870871096852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213a426286892d44b2d3459cc38a61f306f7736d84ec526918b2695b4a923980
Date: Wed, 12 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665585653
