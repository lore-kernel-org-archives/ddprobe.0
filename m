Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27D17B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B14C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670830887;
	bh=5ap5ZIy2marLMSvG9oU9IQlXXeKHrCz8+scpk1NGy94=;
	h=To:Subject:From:Date:From;
	b=qe+WQgZeMxniZE1Dh9QDyhxd9oPiOJy4VWesEmT2aNgrL7VmYf50RBzNTrcbrisjX
	 7buGcRRLUQ7VPb1zsuYqTLHLN8RJ3b1uRR8Nm3CkuecJ2DlnRW4uqSoExyB5Y94jZp
	 MyvhitLimuHC00Ey4s1kl31svAzucPYV2IZhuGydZQihjmd8B+WmfmAd7HKXpRwbrl
	 KibyDSFp2iQEjEaZr2g4dsPz8WdJavQZiyvS3usv1T7wel6GlhAbaFbmi7/PrmG3m5
	 e5JL6eLKxLFLzCU++O7ykuns/hFk/2BT6As9jH88WNLe4nbiwbcC6OQd6Q/Jg36BOD
	 8JfjB7fY5ExJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B43C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083088742.15303.2658408347813740484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f22b053a7e42e2dfe48010bf942f52cb430e05bca1d3291f8aea470e2cc717
Date: Mon, 12 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670830887
