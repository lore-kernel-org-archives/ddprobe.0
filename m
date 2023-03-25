Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22294379
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D240EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679707265;
	bh=N8WUXbcAq45vE5EHXYeR64xAFYMZ24tDmcQ5hFOX5yE=;
	h=To:Subject:From:Date:From;
	b=B1Z58Ujxwyam+aKMbVMX+O6cO6ITZFvX7L4h/f35Ga6aLy4ULViikZ5PbOkf4zlAX
	 1ZhQ8W1J+yPVUBs/8YJXZ01SloCCoIE+3QCCak7ojUulzXt7QIp5H3MWO4iWDSWORl
	 M3YZhQkRHyr9L/k0GJdWVRIx46kDqQxE4pLT+TGAdZiamUKQH0tCd8nMeClxCLwV0L
	 bAHAFDl47ILWCBx4YSInk1rfhVeJAUZ2bNwbWllZs2m8UaHZ1MrfJfvqqdEblTQaAH
	 v0+cOahRQ1PADXIIz2/7QKiKI45eflxMTJVxKFCD34hmQ4xKH/xM/ov1ivuLgAipHc
	 5/1bPNqzjJbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB0AC76195
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970726575.31352.6436632676606120170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0c1263ea439f27ca77a8379fd56bf0892ffe240128a8a1c573bfc81a46000b
Date: Sat, 25 Mar 2023 01:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679707265
