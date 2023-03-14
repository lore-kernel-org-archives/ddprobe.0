Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F7F3D8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF602C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678802886;
	bh=S1bFN9NsiGLh517Y28w8cKr1R7oJ7K/o13RWbWqhstg=;
	h=To:Subject:From:Date:From;
	b=YcUydn996yx0y7biJkh5oOo/xiiGFf6xD69QeJ0QlwQVx48bgmXJWfVWuGjVQ2s9H
	 MjDQytd+BskNy5XvUUV0k1zksz+r0pxPF260cDFqkAyYq9iOhY/0vnxj9H8kKPI5ib
	 HxsX00PG8pLO23ry1ZMfZn8Y/FE38JwHNYOKDonFNiLzwz2Rlcci2mMCnQ7Kuk/c8h
	 DFuEUbMBHIXZvpPBjo7VyS2DEixdfIJnCAW0q45RXpKekd/Hz/DBBuDJWbglgKDWTS
	 +fQuh8IvBGYTE/LRfagdjysmHb7zTvmtBWZ+jn/pJhlJA5WNeUQhGLQ3Ex3JRiqYR2
	 /H34SmJ/jnSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE075C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880288580.3385.16259428548646746684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5357408e6c460c3bc3f4873779fe574634c0a9ebaec7103931ebb9b1b72c2b97
Date: Tue, 14 Mar 2023 14:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678802885
