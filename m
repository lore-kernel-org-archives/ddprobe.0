Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B217839D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67934C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664176253;
	bh=M3S+97rMS6udGONHLkG9rjJ94KffswLoCLXsXynPHvc=;
	h=To:Subject:From:Date:From;
	b=uhj3ieuMnwIE/6At4Lqrr5QiIa+pwuREuOHn+w/rWIbZiXYIqxd7ogiolmcIDADxQ
	 Kqbl8HpDyxwaEnwp/Tp5C1oSxsoDyXxsm2xOMER35OjwcfRlORaJhT/FbStE0yq4Vf
	 BaQO/PXvtHBR/YLiRBdpD3XhCvUi6Gt7iEhzAE8XIg+mv878RfibAQ6wOR5C6Xpj4z
	 Ul202Qi+L35HsZIxVYym65W0AN9LqVCaijA6JocRPuOMSvYgYZliYXZZ35R/0aHvwa
	 yD9TPnwwSb5hxUDjMY5m3SGpqigNOPJDSJNgiK32Ysc05CQU5A7ASLwnMVvihUJkrr
	 bm3twHjdx958Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E610C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417625331.21613.2889239280932022537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ce416db924e656a2fe5ad0d43a639fc8195a86672ae1cb9a06774928753a14
Date: Mon, 26 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664176253
