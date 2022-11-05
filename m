Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCC31101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7089BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667611854;
	bh=FXY8Tprtfec6GmVTKzSs8ljnnd/7mB67LHWz+GFQPsE=;
	h=To:Subject:From:Date:From;
	b=ZpTVSEgvqKkg0nwb+SLfuQCGWMdaWarXMZ50JGPbVY6jgvRyJxXrzD/a2McmAMdIW
	 T0PPP6w062I1O5sYvmEAZ34wYqoExihNbPrDGQOetNVG3me80/cW342vDkj1XQ2i3l
	 GqY3AxLTMPJSRf2dVrUu2L8Sgd+fT0oOybXcM4EZ+WQ7cdKA417S/cWgMdKV7IYvae
	 nEgrXUsi03ku/JO+EX+9yNEQbGlwFt3mPeAlswhjXQsIFTHAcn2UiG3UveSLVf9HIl
	 UzWfS+jyHfPFFhAjj2P3Pkob4xtay23JbVu3DqhyiP65xXBQLtKivw7DHyeXURmpZ8
	 dtKS5hd0p/8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5330BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761185433.8397.10178446406876178681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8157798574ab694e312eb8a1c3baf216ab1b51963a022b8750282b7bcf924567
Date: Sat, 05 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667611854
