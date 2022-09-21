Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98777C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74501C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663785053;
	bh=UWEKlL5/3CuRVxFtIaJJbR+gI3fjoa4tOsUDb3kE8Mg=;
	h=To:Subject:From:Date:From;
	b=lhsGyKw9APem31qOE2Ajz1GQVe+KNxaYY/BrwDpcp0xlN1Wbw7/cSyHKgLMtqRl/X
	 BU40WyrFQbZmUlDnReQSBPQksnB5vFHBDkL9KexOpOCoXgHawdByJUyPXffZEZN6B0
	 3gFNBrbFVqbykUP/Rs6l0LApLsCHn40F1+nOPQ1QAzGkZYRagDsPBkMAvu8DF67kxV
	 0LFUYzFGwIPns0lIy371LiYkg1TPiDVf4KXH/vD93oSkE1EYEGluNHZ+m1RNFSpJ7c
	 vKTAECzgitMQMgiMDqRwzFtlFqCI6xur70tW7KCiHcQ670XSUUI3Cl2PJVtz9GUuN5
	 frgtv7d+rmIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BCAECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378505334.17451.16083209642179001572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7088c2b4c4eb1935248ac1c67cda9a56babe5eac95496341758a4a3eb4ea3e3a
Date: Wed, 21 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663785053
