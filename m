Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5C223DB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCC1C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664617253;
	bh=dwioPi/RZZD007yVAqGBtkbNBoGe3/X2s2cvxRAQMzU=;
	h=To:Subject:From:Date:From;
	b=di5lrTjbYW560yvMGTEYpggPBT6Ze8LsO1a+pFkuKEMk3mawFxTfsJ3e136EIB9mg
	 CuBbOVAR8k1Kes2gm8RqqK/aeD6LMvzdFOFoJTwo2Z3y5bSfBqMocVPsJuvf390X1s
	 Q7LbVv0wrqlM6B8hMOAu5/q7XAfPtcUT/0IedJSELl3kObNGReiYRWK2mNDxMjXUm1
	 iDEqSD+a25HOHTD00zy9m1ZyTCw3LZvCjaH+8FCfdKJXGM4/RNsxJrm2TDCOQaTW6+
	 /weI/1CIJf+HRO4NcjP+0k7RhtBEEBUgWtWb6zN/qp1UfP5ZiJFEsGHYjsK5lMsSCx
	 Lxo4F4pII4EEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E74C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461725333.6458.1670316649865260314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1d19307128048dbcd741b6b19ae6407a7326dc33ed901a5d541be41e9a1c56
Date: Sat, 01 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664617253
