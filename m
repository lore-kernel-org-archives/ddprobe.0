Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDC4364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A3BC433B5
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666485053;
	bh=7XevKH/UG46+D8iqgsRcEzwql2qC8u96qZ3FoW5+gik=;
	h=To:Subject:From:Date:From;
	b=a3Dq/8x245qo0KsAjnV7y2x48K6RW54kbpe7VuSMMa5IC7X0T5Ka7/CSCE2+WTRsw
	 BgT0oMKGUh3huFXVc2PcI3ckRwmUqyNRBMnrcQQ3H519qe9zoafqvNI6TaX7BNNZph
	 8tGr/z1XTM3Y2/MX/Ks1U4mBBYi0ABiA6TPmxCT4/242sKYhQY5GD90bTANxGJIjTK
	 fdkPu1bOsvzILh87Q82urcuiHa6GitkwhHwBz9rnyg+iuUEr8X7dWsVUB28GytpKHe
	 blCY1e3q/qMLMHsikvw+Y/HWGTB/SjCXhe0hL3V34CcdQHmTryidzpHGttlbbxn3At
	 0qFTSYlgFzB5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577BBC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648505332.5454.12977410103113513639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec21eb6e8f0a39175a4e88b21cee02e1918687a4c4a2978b3ecf527b784f509
Date: Sun, 23 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666485053
