Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD762CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2A8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670704887;
	bh=hLKCCTsLd24+QjYG2iZuNuaxDadgwMcDRK2UwyZDhGg=;
	h=To:Subject:From:Date:From;
	b=Qy2lqGW2NH/fHO4EvjMukRvrMrcfuLx6ZZh/hxEEu+JMhrGJ7S/zzQXP+oxTRX8t0
	 U4lc/Saeog0Mp5Sd9/VpoWgsaY1COC4wBeDj6zvux3/Qg7c6D3hlDoy+YCQTD4QDeu
	 L2P8VJ0/HSbGCMgXffSD0LquNv3lwX/OoOkkZhjeduJAmBXwcDHJC0NU4NT4dP5Xnv
	 rcaGW++rQGT56qqIeJGTqizLhXaXMAbs885C3J9EMEdt5XG3T0LBCQjPHeGye30A9p
	 bzMI1QrOQ54QXqwMQcNRuYWOIxYDz/liawu8EzBmo2K+MgPGMGKy4wP8K0DYoVJis1
	 rE5jnNdK7d1VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F755C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070488738.29529.13460826223644139683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7eff2619378c7646308fa4ea8a0fa3dd78e75dd21f86b157284b87b43004dd
Date: Sat, 10 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670704887
