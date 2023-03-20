Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670CA10E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 190E9C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679293626;
	bh=Nvr7QwWCyhd2Av45JVOcRbxQwq1mczTpFBseInZITSM=;
	h=To:Subject:From:Date:From;
	b=DdPusyXWv7mYGEnQwdHUeg8kC6PuT5mpP/fLE06yeBPW/5WgCQrJNmwCmfGdFcAMi
	 z6rCkovgOn9+xmT3bQ6nZ+yqQZ9bvAzX9hq8bfaPb4FBGg/YEKnDy+rvAbqrmBdSmy
	 FyqQmJQ3tJEVocT3bDKVps9nIMG9dBP3BkM/mc3oZDoy3xp0qNMzFb8QEzvloKhMa1
	 eu9R5oPvQMEcpZhHChg481n6HJpAZdCp0U76iYMLxJ9cpPGgkSRPK824ufpEB4IhR3
	 WECAgysrP9PMCJCb13/jk3kfWcp/473wbPuQZn1uaXuhfVdu01VrJdWjpshH8T3moA
	 g+a3PSHMk/0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7854C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929362593.32539.873676678378873016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de9ea06048db631bb426ee8ef2649a72c6050fe29b6c47160bb44b7a909ba27
Date: Mon, 20 Mar 2023 06:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679293625
