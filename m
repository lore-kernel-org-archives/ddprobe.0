Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679BA1EA9A
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D244FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695397508;
	bh=oFanSiP3AgSW5k6jqm2bG9GSqAGBPtieP9m7yTHtkOE=;
	h=To:Subject:From:Date:From;
	b=o4Zpiqkx5cuG8nQFp4PmEs1Ll20mkKU7HKDZthxOSqY2q2D5u5jXmcwrtpIx9JZ0U
	 DfaVCrQTyiYbR07F48iPT71wNpNK164N35dI9sfLlYdxaiHb3oNbGYG86N1DOpNUdu
	 dYK3KeZazB3YIt6J9IFPA29Eief6xg+n6C5pv/E/lnIVUU6b+/n+MIaF1LKtKkjzu2
	 ZGwWJ0Qle7mhfuujT3NaMDugg9zNYf1PXhHmQaKHlWwZGc5oZ3jKscwOzHXzKxenRI
	 CbzkUt3fTR2Evv5P5fi52JH1Qv0G3z8no5AMQagsQQgZ2o7CcOTUfjNOZ5soJfuvEz
	 sDHmFh+iDnQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD353E6FE58
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169539750870.13004.13470703431938121778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413b296ec70add29a7f2c81d6d22cd00db92f371045ada486316c476f1130e04
Date: Fri, 22 Sep 2023 15:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695397508
