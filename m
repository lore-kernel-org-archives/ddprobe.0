Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB9F7B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF35C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666618253;
	bh=ag7a+oc8kimVCPdYPp7tgB62YDV3t5BBAAZk+gKQUTI=;
	h=To:Subject:From:Date:From;
	b=TKaQX17meP+H52M2qNwu71BX1uJ+gqjLrbk1ICQNTmESeRTSLZOSWbnxC2u8cr2WV
	 +DDo+UfSBc9/da42eLEy4FcRQB8Hj7piTJzGutqEyU/ndtOGiMnKDp3bTdZkOUfDO2
	 JunfjmH3uiYsmwUyIbSxbs6RxgVIE6uwm35YkDNogDCO732LXbTpl5b2yR63uVS7FF
	 IS5gC1RxeYpJLXxPTD9YxdnpEuD5rw2lY7zuWZAj234fjL+MQAApn6TxCJS+ec18rl
	 9IWnte9FI0ALVPhrMRzchefy02j2oS8HdjAzPoGPfmD5NBZwX/YwNmnsKOeJHrOdOK
	 4PaEh6/tFngDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C9C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661825332.17536.7163442416045603556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b127eb0859bf33129ed0bea3f4777d41db7d11226dfb08f6a423a4c5c2babbf
Date: Mon, 24 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666618253
