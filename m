Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22D31C04
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E250C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671531087;
	bh=RtzDOlj2mPCpG8o3dwoa4CUZnsbTqvr7hQ7TC22ypSA=;
	h=To:Subject:From:Date:From;
	b=uWwEboMg7EayRl5awyHfNfdA9EZ/fzEOcJHpu1j0dw0wCu9dpoYVAXZiycKXLXinZ
	 JGLQoPLr5LssifvH7XVIBK8mXqtu3im75Rk+vsCpcisp3DMxBNKQyD2TH5L4CLm/Bo
	 DaHFDhkud+yLOyDfphdwze17HhTVTOS4BLVyf3Ed9+f5jAeQCgXAvBrU5SvCo15KFc
	 8Cf1C3Ev9D9s08kh+jLY0eUMUl0YagOAdx01mxshNeca3NoTgUK1Db6w8qk86bFdmW
	 +mhWU+P3f2nPlpyF3UG2ffbiVyLF9o4IqW54YPdRdkIFmS9NN/TxzeGriN7wiIADx0
	 12ADb5WW+y7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6260FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153108739.20450.18154344994652553994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321207a0c75bf5d6247e051bc2b8595657b8d3239d704bc772080e66181e1d40
Date: Tue, 20 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671531087
