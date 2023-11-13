Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2499C22309
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDBHm2sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFF2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699900096;
	bh=fIz5UPLxIYaMTpM49phwhoijwChrF51CZPHNwarZM/o=;
	h=To:Subject:From:Date:From;
	b=kDBHm2sc7jHp7hFsqI9JmPzeyHWxOI6+F1x8CmmJcAhMT8cJZGrezlljbzgkaJ8NK
	 sSkqUhHNHHlIBiwYdE8XnMN+Wyt3kLIyFqRFsXpdPnjIOCddVJ+pqFvlTdjT1/Ll/m
	 pBitp9PhxjdFTwpOs7+0QSi0tOKjosnpttCtuShyGsAxxcMZydIFDcKqgLzbmuH5nS
	 0XQE5PmCg76ZKSlBvXv13T+zPBLIVAW6Sojgo1EvhoRnTQZ+XxCP0AhFicR4qVTHei
	 Xt5k42tkJsXLakrsSFCWGiIan0Wv0okILi+tWHdYr/QDox31WutpNRp/l+eovwLB73
	 UzuLy3010cNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCB1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990009637.7524.815470843147317848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547cb658be60619ad9427c6d2cb89743237e8412e89923d903b4cc2c79c9e9cc
Date: Mon, 13 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699900096
