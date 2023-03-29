Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441FFEB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB681C4339B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680062706;
	bh=DHYq+gw80q+fWM4pTQ8Y4tGojj28kZX35wdPdb2ad04=;
	h=To:Subject:From:Date:From;
	b=fVR2Nxn5jlMDXNMETyRg1FkQp5kr2OpPyGDIoq8DiPiL8YSjzHno257TyyD0+gxCp
	 UyPR+xD/3j8OD4YfJ2TnDSJS8I+6ix951eLFDxRzfAKoDup3lrPOutOkuFIhIo0Q3l
	 5H+kmQoyzFxaFMWMXbZsqK1MK/oB61lqwnILT8p0DpNXDMP3GlsTHfjtceVhjiCB3y
	 rQ4SFMpWAi/nKIGNpklNhQ6ZEiYJpf5SMrpRyhwqny4JXOPUT10bpfs5UOQkTxYrUj
	 YuNdIBnbCpualOGAJzltmdHPFozB8QNoB+6Fml21Hh0xv9aPSqbYZHip0lH/9SU8qL
	 hAK7MQ0JJ1c6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95A0C761AF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168006270580.31523.2783801116571125097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0af75df438a2d653acc12e790e07f520005dc2b6e042a6c4770ed95552b6749
Date: Wed, 29 Mar 2023 04:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680062705
