Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDC24A14
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741D7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664235053;
	bh=vI7i90aW+zj10VtOcxwVs1SwKPKRuIVEIruvQHVkKEQ=;
	h=To:Subject:From:Date:From;
	b=R7EgqXtMfJmDzhXyQwR401/6oWB8rZmz5Bnfrc5glakQ1YU7cKGXa5fLh5ISkxvfd
	 awDuw5SZlbjY/iA0D7BbJfDPcrgo8nyHAepoj0CnKRRFQN2YzGh3fWDBxoR5hkcu6Y
	 WEP7Q4X86lt2WFtJeCCxY9k+VhlCZWp01OqlyFsE8cQQ6kmCn5XbDq5g3rr6Unc0Vq
	 IcVC3UkRU77Q2gVRBl8FvPjw+S6QcL0yCr4sp2+GECNP7juowxexaR9Jffwgb+z9vg
	 DrtgIlqY5wZgfBdC46zd7LXLmFrBa96K18oI/p5gVQRle+1xuvo02iaemBi0vSTgMk
	 f6djF56LMLR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59389C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423505335.19287.13892264859460367996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26aa850a17e1efe23a62bf9fc87cedd3537db711dec536d07fad1d0ef3f0d36
Date: Mon, 26 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664235053
