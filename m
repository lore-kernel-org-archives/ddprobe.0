Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCF57C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC16C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670163654;
	bh=IHJlSJX/W0DIhBtXt27dngLBrVmA2qPXwgPLwv1UZnQ=;
	h=To:Subject:From:Date:From;
	b=OvG0TYRgH+wgFSFx4AkyH3FWsavxL5Vg3MG7uKP4uWln/spF8U/7iuufN5vyoxEUD
	 ba874W2BfydNa7xSJxIMBvOJ4XDsM57PYx8FXKRRFXMOUZ/J4HFQBw2LK8aP19TL9R
	 Puf4lbiQTVj0PzGmVeaxC8kZYyxY8+6z6n7mJH1ntf8Ksyv1rEoykfYRKdzr/Jri6W
	 e/6VDllqsHNPUl22rUuACCIsVrZ9VTNj4eFZYXUTSJg6r0eA3pFkvel2lyZIDMEmWK
	 iVNZsG9VfDWx13Tfvo/xkfSWaR7upSDywmu4i1TaxI/zkw5yeHwrA/TMkMGe+rSKzP
	 uyQsNut5hrYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5714BC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016365434.17561.17766140312196226203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73b7016c2b596345233bf921d1ad38768935efaa9fdb4a7ecb752e536b3d2de
Date: Sun, 04 Dec 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670163654
