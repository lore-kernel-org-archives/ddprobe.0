Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB256FBA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF1C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688498768;
	bh=Ur3PZ6z/JRLJOXc6I4maRUN5ef2CF+ZB6x0bogUMflM=;
	h=To:Subject:From:Date:From;
	b=mo8lRHL0kuKZfqgHnXpzkycWZahoXs7iwwnKsNG0Je7z1yLhWuqqM5+eKWXg7NcmQ
	 e0vxgEuVy1eJqbPmAEYkUIWtWOmMqa6HUfA9+atY8FsQ88faWsfTTZ85PrTCrlL9u1
	 rKM93T9+Ai8mO6s2OMSYRQcL/DCJtNfgpw2/s8MHydSn8So59DpQ2/ka3NxxaFXYjj
	 9FChqh8e1LLY9Gp5w2tF+COnxWyxVWiAaMxwfcvUdfL+0jrw+yaslxBjEUEB3U7voV
	 D8FnzQUUf0x5df/ghMUfcxO3hERvB8Yaxeunqbm8Z0cP7NMhXN41ZoDTwdjrs7UqFO
	 Wgt6V0/i7kxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77A5EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168849876874.2074.13697650155760613239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198ed5e66cdb30b33a5940c2d266f4870165b82d85460aa6789b570800021fd9
Date: Tue, 04 Jul 2023 19:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688498768
