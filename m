Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4688185C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857E8C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673095287;
	bh=EZKhNGCPXtSLENn15H3ku8wT4XoO9HBqRJyqFkTnvPM=;
	h=To:Subject:From:Date:From;
	b=JUJ8PdQqCLJkkSUL21f+zFbNvHUgeuq2hdB/9KOCd4WKt1l0KLPsTotUb2ysG6XPz
	 Q/lxbC1teftpyuQktRDCMInjSXk6jTSOj/ijzcvvs91M5OeZwS9qw3DqXVebTFj1T1
	 vlyvlADrTrccY2Fj38FRfyAy2Gv4H9iWB2vxcesp6b3zumcV3pcEGgsFWVmQbaA3w1
	 ZutEfqKbz81Pfi2hSSA26PSVJWUYFulzyraHxPsYXCyOa0DhggQnMt1VXJbd3I+s6b
	 eX4QCZq7VAvtZG3I9Cgw9x9VTpPJBGL3vfXXfaYo2SHLkMhaa81i+QE6ILBqr16bVO
	 q8Z+PydSHbLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697D4C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309528740.318.9309408641397930524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f721c7b32439dbd022a58352845505865bc636d39942caa17f06621a22167acb
Date: Sat, 07 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673095287
