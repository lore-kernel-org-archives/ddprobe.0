Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DB720E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C79FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673603487;
	bh=XwBtLndQw1KpoRyfPxmJJFkr4kkDEywYg1EuWbDSTsM=;
	h=To:Subject:From:Date:From;
	b=KIEUPM8VwzQ1ww+V03mnL7vjWt8Yw9+Fx248HydoAjsoN3fuLzfstUReTJomd3Ydj
	 nO8HRBKJmw1Qm8dg8wg/cIb6dJqGQVIGFiR5P1ileQzmrwd/tdxKYBKod6FsMNhl56
	 KntDLGc36lC64qgvOo7JL0xNs9X/Klb/pVqdrBVuMkWu/ztPXTSgLYXPEsR2k692ub
	 7LW8zXOED7Zsqrp8ypj2JIKeOM9Hcp68+Z+4IamrDIRRqErIDw/2bPCU7SG7JWqi2N
	 w4nAOrqBZsAsOKpsQ+psHpOwUPq4mzK3rj0XQ66/m8WKRcOJqiTs2MuKrAqbn+X4vv
	 RZDfbV/5KAuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7519DC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360348747.10307.5336854466142851783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199c1dfa2239e3ffef668c3183ac8217d018e5d9bacced92fb3a0afca97c5a0a
Date: Fri, 13 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673603487
