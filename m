Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAC8101E0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 19:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD05BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690227728;
	bh=czIKlhWNgx8uWuQed+4e2bW/s+rKJKSpLdf9jq/Uz48=;
	h=To:Subject:From:Date:From;
	b=e2SRqQDbLOiJNoa6fJtM4ARbF6Eub0HoamyW3n5DQIQX1NHDdR5G/zF99yNvQrwFN
	 xYdr+1ktpHKaD8cPaZcbGZH9/DBGYMsFcun5TfPMP6REHlRDErkh22JcV2KokxhQvh
	 G84bLx53yCxP1EG/JyddhssrP8T/6LrWcFlNSbZZvmUOlluNmtgWoHFsisMmijBo6b
	 OLr5YutU7ah+QZlmDm7Aabn00YiDAkJMTy9wyyPkEUOm/vQUTz2OKwoocB85H/954n
	 xKFe0jJr3kYjodaSdc7VKtP+W8bZn7JaVV4Vd/Dr0blcWkqKmcQUQA4/1EZTpmBdm7
	 ZW/T9QBcSkKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01DBEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 19:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169022772868.7583.8400562323471023679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3ca8f2660831ec2a8c51067fc7a2dfc2a2a96d73b26c7d6d800fd245bd73ef
Date: Mon, 24 Jul 2023 19:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690227728
