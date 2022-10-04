Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BEC20F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AA9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664868053;
	bh=Wx4vxOtgSMrKl7/UQx4O7KEPsdJ1P+U9xLpdYrrmIRM=;
	h=To:Subject:From:Date:From;
	b=SjnrUzl1IrFdQQXOF4m3aoxes4EZmbubgHWZo4Hj/Z96K1vS968WfFg18Y2UL+oVj
	 03i0O7sMd3z+x89ilcVhJglNEGMQ8QHNSDrpguHX/TdIHzy8co9XhyMSt8qdegqCiT
	 kNB6pzPePiA/kOohEVGH7u43y9nqSLY9aYqK7XHxWT7U05upcFXdTB27x5jjSgakaC
	 Jl7qG3mhx7p4nptxylEx65H7CLH5Ff3hsHzOwuyuXEKiIfJ46NX2zbVpOrbHy8szeK
	 wb2v+48+3SyV5tFO8D7AdUpXJVRTUtj2NR0dtv6Pi7XhHF1wMe4b7XiADg0FsS0AiW
	 Zs5ThIh+CSpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561F2C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486805334.6568.17527558998005609023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c08955a03d616360d159a9e28513b97ffb35d8fb7a83824f7b9c0563d87e7ad
Date: Tue, 04 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664868053
