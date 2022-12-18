Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B747E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E2EAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671357087;
	bh=iugmpqA6yyJocvfNfatQlArNdNtRg3SqXiIz3Gpo2gE=;
	h=To:Subject:From:Date:From;
	b=M0uAxpAa1OqfvBPo+S/DWZFAUH49BMIWYqqU3TK2WdemlhGEyuKkAD0F7epG74aTS
	 qyuLFIlYuCBKdst3plaLRKP8tdejXcclufuIS9Gdav3bWB1k/LKgtaXoXjv2nuVv3t
	 qZyfpnxHojXpFuPCCFY3QnHiTfgkZ/KW/kqX2wFCpwSKN5V0TLuUGN/a1y+lCEBdy2
	 +i+1EthtvUN9XhlQZQKgZbw/WRKHfGTvqC4oVsFyyXgj7f/LgwFNPFBHgJYHhT2ipQ
	 HJPduZL0vWBURI/8NoLGI4UhSMsyj5F1svO6Fkva0I/m/xyGfm1KFV4C/0hkmNgjMH
	 gZ1fLBPeCIh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67779C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135708738.30581.13023049441163513109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796548c77d1f2ba080cc2b080b7d9a1769b95684a3079acbe0bdd69404862df2
Date: Sun, 18 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671357087
