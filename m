Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5491367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDDEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672063287;
	bh=ZrCkp2iSwY9qygYyAA3kC6pdOE60VuB0kLVor92c2M4=;
	h=To:Subject:From:Date:From;
	b=s8q/WCtHG5Vb7NN4GBZ8XY7b5E6Co0Oc14tW9/nBDhwh8BZc5Q1g/X9eHtbzPghxA
	 KAXhQldx7oBDMtbuwTDgWlOgzeMx1lCXqwC5eLuiV0INO4rUwR4UIrdNib7gHB4Dcx
	 SHlDlVx5ScALjdtlAx6yErahRgQez+GVH1cgJi3wRLpqf2FGQuw+ZRzBg4WoNyBG0d
	 8sQH5rzpakdCztUOA5mD/LVdlpkQisL/94x2OOblozkyP9Y9MBMGRnxOHf3D6JLwHk
	 f3H5qjAqfEnFJpz4uKpgLKY13xTheySLcBTxZs/wz42dlVYOo6uyGZSu2HjYLBMsYh
	 xTNJ1MZMCNS3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611E2C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206328738.2590.5516993224855327709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd37a8103a7d9025519395becc042bc41b5fae05d314406a542353a945e81490
Date: Mon, 26 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672063287
