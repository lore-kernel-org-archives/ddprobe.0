Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2F21101
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 938ECC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672378287;
	bh=Phu4a5eqmV6B1ApRj1DFrcRn4KRoLFuEqGmuiHjS8BU=;
	h=To:Subject:From:Date:From;
	b=rfR+95R4ylWLjaMrXkTWl/KFo/EQCz5X+DStW4aC/gUId5z7/Mnpv5mGolXhincyL
	 tgYg1cDSU9Oq227athfiiFfQVNXoprAf/UAX4a8uwxXOg20+FXef5/TUfwKuO+otbn
	 U4hhr1bAH2/Jy/DA34tFf+XSoMNtHYG7rEFyws5Nis6H52oXaOM1VCg9ephRLoB1sB
	 rXhwJdR9KkWO4jMjw4svByqpeRuVjfebOteAIK1o2ObNrIuVEV0czl7gtUNlN+MQC0
	 VWMF2zMa81P+WS91P48DAOaVsg3AtB7LL6LBTMcfRzumZ06ik//9iVxfrOBBEPAhbB
	 g2ipURtb99Z2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77FE2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237828744.31056.10282411650994735339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388443b2783ebdbe395df732afdec1910ada1b9927b94f0edde47649976a4c1f
Date: Fri, 30 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672378287
