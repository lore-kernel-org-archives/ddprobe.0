Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44D07E7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D37C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673742687;
	bh=DF/qnxfcmB+YVuyuj7zbE62j48M8IJc8HFSESG2wt9E=;
	h=To:Subject:From:Date:From;
	b=tlpGYSdivk01/NFz1FXq9qibU2QsSlC2qtMKCjfAZMLNyu0OlCgKM3ujC6wTH0CWX
	 Py70T5FSDoZWRedHyXJz4UCsPBkXksXPnYnsEKLZ0rNCngYW5QAQI6gZx66a8H9X7h
	 TBN4FYz02+MUc/rc3+0s5pJsryCHg3LVP2OmssE9cjsQoUereoceGCP/DoMVSWTAqQ
	 Mc5iPquYJwGoFT/959DGJShBtxsLKDNLFiUtByILMtxXKsQOSwiEif3O94xY/ZlqRl
	 D6m7TThKpUC+VDffpGSZjnZ09DatUecHkvPEsSbn91lN2Km3lzPMBfQU5wGjYbpkHx
	 4XxI3jceAztJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C8DC46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374268740.20694.6683486262887954621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f66c086d666539b7a5ae265ee661c885d073b50c6a2322be2beee62fd552d21
Date: Sun, 15 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673742687
