Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7517B2018C
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACDCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692737648;
	bh=jAjck6CNuk3RzOlZ0VabOA1N+4XJvLGdt6SlzWhbjVQ=;
	h=To:Subject:From:Date:From;
	b=lnAdaijPJJ2tMuf9uvMFaJppgM8FAjEQesxoCJ6saJ5YxQ2BMucFwuFEF84drYMbN
	 7hbOKdFiMAwAKO7DusnceCE6mg0HUrP//aWL9/hIrsPfxUU9kVa9REQVVt3LdCD7bK
	 HSFaxWf3oFUDAeeZ9Lt+G0gH3DtqfYSIqdzcUR/70WTzKV4609Nm19O0e6fyVWIrN6
	 nxiQDfaE0+tYJLmYl+nVeazYAUJ3Xly4NV84r0zJ6Pg9bV+UW4QuGRFTWApB+BNZZS
	 z5l4ktzQh1+J66TI4WQTpBLXM/Xfg9606MrwDxoXLotKNBl6Rgv/9E9WIWrRNv9cwf
	 +EtK2sgqFS6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA32EE49A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169273764870.4498.18389730425562916939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e47d97da4f8b3cf7814ab808280715e62b9458813536fa21784c58a7a4dbaeb
Date: Tue, 22 Aug 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692737648
