Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2305A8801
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB00C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671067287;
	bh=TR/jRcZnk5lx1M1xM3ohumk+4B/GyYXK2Tn972eZkXw=;
	h=To:Subject:From:Date:From;
	b=FMOJR4bAoEtJm2svR27FKVKfHOWQTFnqSHUoInkVvklKmOA51ODmY6zf0U+tDVgnV
	 pAfZr1HCQbNM/UKBVIGKARSA3m4EEf+SCo97GcUFNHTSphmQou4C+nbxhHpIgWrtF5
	 6b4kXDepcaw+o7nbEV2131vdxGKljaV7pqwDy4xsU2xLHyb1R8k5eGGT1FX0X4H//g
	 kVSm1672IaRy8M3X5ptlCnK3e9jTrkmsAFcOiLxQSiwDzVOzjAuiHJ+WQJmGJbsc3j
	 xcvUcA/BN+jS2st3x5/7EyDr8JPI/cQCc4dnsq5uBQxuvzwf8pEvNUh7IL4/gd4Hoq
	 /UqPcuX8oStww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCB2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106728754.8792.8220017466438762001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961ef3f277d2635fddeed986f76c371a0316567495e2e73d69e92e316ce83eda
Date: Thu, 15 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671067287
