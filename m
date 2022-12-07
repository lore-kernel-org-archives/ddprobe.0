Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2DB8BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DB0C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670440254;
	bh=ieBoZKPP60to+zrMt4RdjimIsABvaCzmXPE5nm+Rwy8=;
	h=To:Subject:From:Date:From;
	b=gpbAuavgklTqyd3o/iCl0ahcS/e3xq+tGezymJT8oR2lFWOFoRE/bzd6H1OsC5hAu
	 S8AtPvtkBHgiZxJuARfmUjk5pUrA2ZjJU4G9RBzFzYpIyUX6XMa1WlcAA2/HVQsor9
	 UAD5HgYR69bL5Zi3SiwtAZLhALzIr6p/+hRazUauIiTxaaMDO4zfEN1YXrAEZZ2vSe
	 Edhhtog+zXtILFbUWb+N56iSRJsLk8MKXWmgh7NvnDgbWHJ/rZXlIrVueV0TOqMEhg
	 Oy+m2uWFEaCo1ZrVZ5v9ojAdjH8WdCxnghuLhc8Ql4Ok4oPCUfLdAmdvelFomqlJAs
	 w+DCN5FBqse6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C04C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044025432.1066.12682216552369148834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ac7a5ed0303a54d15e8e04a3ee51194a19331242b8bc1b6a1e64c26bfbe193
Date: Wed, 07 Dec 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670440254
