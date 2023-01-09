Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62E815A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89875C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673227287;
	bh=WwD9EST3NrygNOx+QQCUM4P0VEkSmvb0EOIij7T79w0=;
	h=To:Subject:From:Date:From;
	b=l+CAYvlhk1OD/j1TYi8oJuPCXJofiIZTEsxDE3iGZggY/LTHktRtPzFABHz4cd+az
	 Cegu/p7EpsfuIouZsTM+a6FC33J/rWthj3LXuL7JWWkmAXoBUrtDRW0ytzxLIJCNED
	 q2iKuiKGpTmGFLOxx6jKy81FqR0/bLkVmzyuo5ftRkARkjKKROR2vz3a0egp5B5ldn
	 cMPkFQugATjbIZ8xTJ+pvxEWWN9KuWAtWnerPCzJZn3SxBUPp+s/bDTy+naoEwWwUI
	 /X823q1A6EZmgJ25E5dqGozxbR8+91xn8s8RLPyNJ66mgIHr/VOwU1fx1K35K4nP6q
	 tr6Et1rSmxDmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 708AFC54EBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322728744.31872.13923129613055684148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a23c9ebd822848e1906654ce31725bb9bb118aba208ed3965ed305aa1391e17
Date: Mon, 09 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673227287
