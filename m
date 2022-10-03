Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FE77B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A94AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664759453;
	bh=DAfnNDmH2R6lT/DM1CeTgbz6HtsrCDQOTXfakzrs6G4=;
	h=To:Subject:From:Date:From;
	b=pPj0AgSyKbndNoJtIUG5nGbXkBJcBygj7bD7ADd4vepBcsJcVqQzohJnyhJvhXxo+
	 /aR2Kxm7udpo9zKB0C/l7f1gL1N/4qJiuLUhNUQyODELhpG9BNS9Hxrst4owvqTQr/
	 NXW07MYhzw4XASIQttaVpUuSKfKhFUor1hYKILUE18b/kfe1Hix1KuUcWlmnewytEx
	 GRORlPtA93bsRlGNGgr7LS476IALcCLRl8Zz0d9rJzXhimbObOcd27NdIwIpXl28Cv
	 7RB7mMp6+7WXYDQbW5OKxtbkIg2J8o1VsKzrNIJqvKE+eqb4S6nCfxRCzPW5Smlli3
	 p2yPPAeHFLFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E029C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475945333.15050.4642120184888129320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a01cbbfa06a710af8ffc92b71ac330d9fa705a445dc16c2a0e5d260b0d5304
Date: Mon, 03 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664759453
