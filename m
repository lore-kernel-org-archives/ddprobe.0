Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47F5ED4
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754CFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663579253;
	bh=Sd9OpeqdZtm9+6uhKn1oG/hOSgDaVvUsbKabqOn/OjQ=;
	h=To:Subject:From:Date:From;
	b=GfVuhtxjeDq9u/M5b/+djGBNOCobupXN5iLQe8RbhzRlPEV6czf5s20eUXp/e0iq3
	 7xqspUuDc6BqR3vBETTMAPYCIwHjBPdKqiek2ExJDGmgMq+Xqv4SPKHFeY9KpGuN4+
	 yAqnXgtJcNy4YSgIy+D2n5oiAg88eBdA/FuLY6qjJ9uW4m8IhRK7O2vVQ4BPjulmSG
	 ByoJ28IUrsDXtZT05ZjfEcs+kgXrXsizoFUzbcZcih+j7tk5OHIF/QZIMCjzRwK1Ol
	 cdf0nfpWG2HL3q7vTRRcWCyZmRTJnzeYvfpEguoafXetVjUV2ENNADYFoqosULRtmq
	 CssiUb7vO/6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF81ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357925336.24517.10470746914269598965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdbd1ab288d72e288e2a33a964eb5eaa6267a21c8c24c225d0bdee7a89052fc
Date: Mon, 19 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663579253
