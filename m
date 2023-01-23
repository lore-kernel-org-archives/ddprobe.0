Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CA880A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE93C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674509585;
	bh=R6hlpBClfFV+3Ep/F/gFSUlYo+55kMHydPUnfm86L4g=;
	h=To:Subject:From:Date:From;
	b=M3dCTbra4UQt/9efRBilPvCwrjK1CmeAUImxy8afTj4LK1dNXizJKfE1S9xtSLXGh
	 E8wxsE7q3rVrYNP7k1QskTglUkSGayh+LJo75kFthIAgOGGbokDXEm7ZhtspjnRwEA
	 Qbr5X4C/8psNNguVs42j6QkdaaX9DKkAVWBvFXZUFnUTGUTCmFSK1Nuqegmjd1csQ4
	 iWinqXQRKqT11jPhQ6B/QadP0DA/CtiKtwPYALMntw+JgDvGJLoCR574mcnekWSO1d
	 mJl3YV8Q4g8k/eN14ahhlMF8KaH+HEngZI9wvgJ/MP2U7RSB+FPpr8YLuN4yEzq94d
	 MAWdZzgoRUIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31EAC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450958579.27428.6480378786785755044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad0daad8aea821c8f79d3d41fc0ade948a5e4849bda4e7170278faaeb6042e8
Date: Mon, 23 Jan 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674509585
