Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B6ED2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFAEC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688536568;
	bh=lbeWn14U5rfZz4BVfqT+XIOw9jHucO82d1yfdnM9JJM=;
	h=To:Subject:From:Date:From;
	b=Ohm5MYQslbizf8DHD9WY4EApeI2d+y+l6IV/u1PGXX6BT9yTcmNC+bd3R3l5zofBS
	 /uln4fdQMs3/OEpAsgqSZXypJDNl6/D6ydzC/aPeDgW2nAqwG4LjZZYb0sExEJFPYQ
	 97e9mShVoGSTUpJiyyf/4VcIOqIyPYn9Um7NZpDQBotU5lzAv3OdCb7tyoS2utKJPO
	 01qzR16R4A9RNExSt6NzcesY5iPRjYQErJuBr1vmrXHbuPBvB3JrhlTHsrrkqSkOrf
	 2PKFqlliiRLFt2LKT6dh/mzzJpmzX0c7vE5hH4nXioTwmFG4FwtxYigH1URjzrirGD
	 LZw7W9Er/HlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51BDEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168853656866.12915.1136258899110700658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6858e3b2ebaaf132fd9ead11ac0bf13bce100cc073395408ec69c582f66ecabd
Date: Wed, 05 Jul 2023 05:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688536568
