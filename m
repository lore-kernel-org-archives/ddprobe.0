Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF9846A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CBDC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688546168;
	bh=q/skLPB11Jr5IAHJgsdIyHcQnoWx7iPHOeSW5VC6IdI=;
	h=To:Subject:From:Date:From;
	b=Ydue2bZqKPpu5BNZHH55QjYRP2HFzeViYMdxq6K3bntJ6ZLCOZDKiNZK0TN+VO3M4
	 oW0M0uKa09v8Qk4oLL9vn/dZch0v6C5bZAEBFjJSOcgY2yAdkADMe3Ga7dBgTI3hhy
	 ovzYa6tuzs3q6Bn596WpGPDllKh6VSNgbH/lkNbFe1kiIcG+fLq9g6zb5JQWFR8X2r
	 bf8Ws8uRYoUEgkJ7v9KLQLj4f44uM8vwFOqRXzeT4F/Bb/p2o9kgpyba1F0/GOiDyL
	 WrLQa8dv65pEnm9xG2pNkjke/mFUHStwBp9FpBnq1ZC+4Ziv9qFWotQQCHbL29/Qze
	 XO0n0jFIr5Mbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31ECEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854616872.32112.1722284725855252345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fad0dcc6ff65ff9c3a1edc781e341dc750d0e5da65191a9b307e83212ad837
Date: Wed, 05 Jul 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688546168
