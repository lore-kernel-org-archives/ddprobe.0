Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D917DDAC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 09:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688983028;
	bh=tF6jUtfBbKu5BPz1YmyJ6690/rlwxtHbgd6Ifdmrpic=;
	h=To:Subject:From:Date:From;
	b=KzgLIdnYili8g7kXujdbRjd3Zam8ap/7PWbBGjct+8Ov9IFXhRGcox3V9Svt8PUgn
	 TyPK/bAFjbAmipjRn8sjDnptF3oH0zYxbcVqPzXFDJ4UApYcqE11kvUaJRJ5rT1hVe
	 zG05x/JJ3dmXdwrLOa2ehfJW4mjshrmEei5ieXXKxIP1OgvuOoB0e6EdfSiEvqscRo
	 BgQ+ROapFg1QBjJ7dJHNutmiORC2BWBAPIC1U4R3ii417y/AEyDfqCzAK7CCAHpIs1
	 TTt6zuZzzIQDrXle/ywE0En8H+uO5QxuGndKrfSyIA2I75N+ar5yVcPfA9WFeM2vyU
	 7WdQAL7DmnJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48D7EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168898302873.3929.7322498723723536108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c75c542e3a02206f89802213bc8b8d30bf768365591147c445135b5506e7dd
Date: Mon, 10 Jul 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688983028
