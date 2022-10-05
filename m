Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BFB375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72175C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664936453;
	bh=tgwN2TDdcRpdDJgQwHhZuaAx8IsY0P6IPIskYDzavO4=;
	h=To:Subject:From:Date:From;
	b=BnZNqdm9BjuHzaO6fQPAFXU21I38GHyBhNkK4bJO4EMUm5Cl7tnCdXnwPKISp6PdS
	 PVLZneNzTrvMP/g3ey6plzD7ZWled4hC+13i7Yt+/nvDcoRI4DAvDlWYNpll4EF3N7
	 dk6suIh69M7qaXi7VKpUXMBj/KsLc207mlkfDPh9cqdCY88tVuDnCjqptQjI8sQFSk
	 qYVt2v6zqzg1MKSU8AyMuf2LN9NQiNWWxYojpoGWtxQMScmQ4R2+JXYDtA8frjwFS8
	 Kyztbs1u/VSMy1Q/pElU1BdYW/MZslfWGUg+BKTpV8SPajl6bC5BHNKXmOknBh5E9M
	 YEwPmKlWcwDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BDCC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493645332.28282.14581633554228924787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4355866933634ee105a67098e5f9622bcfeb9bef013f6a5a335d5ef71214060a
Date: Wed, 05 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664936453
