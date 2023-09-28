Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531D8368
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 00:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3F3C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 00:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861368;
	bh=Cz44AQN5F7BhLF1fPt1Iuvf7p4X1mxVLeIKMfv4BiHs=;
	h=To:Subject:From:Date:From;
	b=SgiO1Tsivj+A+865GR1jpMSpAM79De36XUG1qN6RX07uKXDp3XHu3gMYp0HDk3tDl
	 SFwhJTJs0wHcyqYfeUr6vMiKuZKHn5C0WxpZu6AgF6JCHsVxLnQo8aGIttNCDNoEJx
	 asSJyf2r2f6HOBkhiWui0Ru9Gx6GC5gIR+EBWxoWtaiQjBs5zr5gwKG3NDTc2t52Pf
	 bePsXDivXGOOWaWPkL09IiXbnMe8w/mVky9YRY8DeqAF+lCd+vctgXbUgPpsTJnxtT
	 HghbZH2qso7QKUQRfjdcbcDZKrX61ERs4b4I9jgEzayiyDld/QIfX0s9NEXj2767Lf
	 vjWkbtfNgGuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17FDE82CBC
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 00:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169586136871.23692.13831506481725448250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61bcd90fb599cfb1f7ff7b243d9f9ecf0fc3f8ad80e87a574d182cfaf69ef65
Date: Thu, 28 Sep 2023 00:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695861368
