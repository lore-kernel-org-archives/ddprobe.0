Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE96F2F59
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DA4C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664908853;
	bh=gMCsUPWkRVTuJpAs9vCSbgX8KWjh2tKAr77BzGBW6Rw=;
	h=To:Subject:From:Date:From;
	b=OIeVDDUQvUxBzMJftO8gE+8mAuTJvre9S5Kwf21FJ970aiLUFqnAmQmCJkZEC0rLW
	 F18a0xikUPaixa4xxtoYBf0SET1DHCj91NkVAY0VetUzxlyeJPvZgGS02MPNbLHXdT
	 BCBR8CToWQuC3T13uZ4bt3cC0nkZRdpXEPfVdp9n2M3SHeD88BAEioPeIFU1bCN8aS
	 QCls15NLcthAZi5fK6PtAe4RZDkkkhjZZdzK25/qFFHG5gQogVgVjQegFiIfXtfKoI
	 n/KxIL7Wwlb3Rs0BUj1mgsWw+9/RKSHrxBHNYZlypAIADckFFBl7s824sRdZh6045f
	 GCgVMO/QxY4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF1DC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490885331.8934.15805101752834831942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a792b1db13fb84c528901f4ef83d0ffe4dd6cc7eaae4cdffd2d360f8be7039
Date: Tue, 04 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664908853
