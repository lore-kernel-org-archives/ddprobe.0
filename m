Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB98B3214
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82980C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673341887;
	bh=a4mEOWVDruNXHEzOk0G1HSAPydPkQB7bzKRW028r4Ks=;
	h=To:Subject:From:Date:From;
	b=hX2s4pSaFH5s4gS2o9+FDg059JC40dQrsXCAqbwUGyihhwt2XYybVlexKkU44yGfG
	 z0HlT0koAivbGiXMYiJmrWFfst5aMudGdtKIM/6MShDdsFKBCk55QleNIdT/KdWY7o
	 9ARY+tw7eZ7cHodTL8GJt6br1V32bc6UrDjVDouux19N73gUmlEMv29i0CrYpJiV8k
	 VerXrU03Q9baJGlzEXfAKb6+bgGkmivV7pJ9TGp7e7yQ1/k2bngPSejHhUCoJsH9//
	 3kvkfNKvpnbzyyjbi8/g+gGfxFjNUi1ZMzxSk+G7PvEcf+LTXWMUpLzox1I/2Q8C7E
	 7ngpXZ7wyPr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621F2C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334188739.762.16474426059579446985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa3cbccc4634ba701d0b8417e89201dcce0a25a4b9741e7ea08453c83bf07c9
Date: Tue, 10 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673341887
