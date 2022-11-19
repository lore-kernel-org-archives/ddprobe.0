Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6BE625
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D12DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668890454;
	bh=XX+HZvKvaeIE87epkrAInUOt04lQ6epsjF2lyrhJDRE=;
	h=To:Subject:From:Date:From;
	b=FlT3lCaXZP2UNFdMg7VT1P8A+AeAmvwimZJYehDsAVa8VTrt0MN737mo+i/+idcmM
	 V2U5e8/W7dLOPaAdpEMDLc6exhY0h1EW4dxmeAsPJuRRF+dzM2kgFVQyieMtdbBczj
	 cDqp0mmQ4Evv2Zn0mwmuqZBtFlCfA+boblebkdpA7nh/ogKi22nffxZCfMy6ujG0rr
	 YDLqAjCwjy2q662wbuDmehF1azdEVJbSiphzYNfPNZx268RIyf30TTNvBNChHJeTUX
	 v/zeKz1LgO0z5dcYHOigulpn5ks0YaorwJ9vWA2F2ZxcPLMshuxhg4D3Sa2Idqgu/p
	 mwXGlLB9QY6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C7FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889045447.2084.6627204757602068642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072f94ab87b534235b8330a8ebf325bedef876b9d9b7242e93f356f79acf9d12
Date: Sat, 19 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668890454
