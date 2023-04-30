Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE137A
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0943C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682824566;
	bh=Gfy4e4JiCpAPUVZiwFnegrXm+9D0XSUUUhJfHMAacqA=;
	h=To:Subject:From:Date:From;
	b=WeEtQWBB3koQkA0iCsyOsjeO/X+Sr62IwnvnDFtpwe7u1VYrjfmerMDdH8E8iupKt
	 omLP4k5j5pLxKKj7+tJG9f0Ipz8kajGnXW8hPEveWsaEBOrUkAtWsE2dc8v+tCU/Kg
	 Eb3BfTs/Zr24gjm+nWBbswS98NUSEwdxYzcZthpRyGj0vZq/Q/fSVeCQC9CUjpMpBw
	 b1NvoMq2ycl+OFaf757kaYEhIOnNX9yakV7xAfBRc3T+Yp9i5ACu2gI4w96ykwC6SS
	 BW+bV3IVThiRESpqPUmu6NSnxs091Yh4Pnxv0g0wo6PJGrSRYVZlhZDuWOqTcMh4Av
	 6SL9mOeQK/NoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4F4C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168282456579.16039.17895435539915199264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206d792d30798d93933a1d2b2cbf8a50e37b42e2ba957d6c17bec25170490f1a
Date: Sun, 30 Apr 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682824565
