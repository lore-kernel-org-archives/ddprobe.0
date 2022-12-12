Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F1F1360
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D94C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670862687;
	bh=EXVzL8xabuCq5Bb2vtYih0xRlJc2z30LUesmPAzzW9A=;
	h=To:Subject:From:Date:From;
	b=iwbU0tSuCXswIfODeF8GgZrpEoTi03v6NsgwL/Cb2IMnQDu7RwyyVuMjmimc29+1Y
	 MyAUW7f7tyIUXMRT9w7i3rWeWL6+yzoeLEa1OFHA8TZZjt7V04W13MMdPNLA7GGMw9
	 vkxcmPIBY78gESJzVw2xy6SaXGrFjVmh6qA/xzwmS/csiUkgccWul7vODFdgTk9g7g
	 gUCb5xyeDI4zCARRXAFwAu1/p9ZDFqKq+/IryZuoXyn8oYts0MqQ/B5EBChVglW7v7
	 PXO2S7zQFUUrrN12QYQFQ7/MpPK3Nx28Hl3CBGWDFC68P4/8FemBaBZfrXX7f+1tto
	 D7Xkd4iYPT8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65431C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086268740.12818.1492364893650648490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5e4c284d57908fbf1296c5f144fc4601e97771b9cb8850ae43e82632a66e6d
Date: Mon, 12 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670862687
