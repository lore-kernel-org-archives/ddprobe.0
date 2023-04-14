Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6167491
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE5AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681516385;
	bh=rwQEwmDyJ+tUR91aXY2jLhZPAPRdPHoz5Zq6OdBiKbA=;
	h=To:Subject:From:Date:From;
	b=e3KQLV18fqFyLePsj1hExSpihUbol07b6O9dq6uS2G0YcWM5NCcnI3sjn4mX0yq2a
	 n2meoCjNF1XDCIdQhtPn38ft80xrbLeEt9cSzoVa+IOaPlM/lLptQBwUNQmATymY5s
	 9qDAEZRF2BAkBoOInKTK+aPrL7DpkVKWoI+A+ZJ6hfXpbx5N/xC24q4gOFvgA+IJhI
	 CC4Fyabxxv6USz1puobqYE81/Knv+XBEXsWK2SZpiYnmS/eLxtNP01sz8psAAyVfoY
	 m/tSvFuTT6siBs8CkacQbK+HJwWkBbqQLN9yTJcNolvht4+n3jPwTQBOct4hzxn3gK
	 Q0EzU09odIOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E4C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151638576.1421.1155913291738576074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5999401d7c6aebd734b152e5d806b2dd9beef828aebf1c3283a1ff6d66fb2592
Date: Fri, 14 Apr 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681516385
