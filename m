Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5768814
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B127C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673553687;
	bh=jBRoTnLI+xVVbkloXfzoE1EHHKtuVSigYITxbCKoYY0=;
	h=To:Subject:From:Date:From;
	b=VKkSCLa9BZa/GfKoBgDT6IlfF9LVJb0VpEfbA9lNebBdjU7bFDevPPszjWL5a3Wvb
	 R/N+j6S3D35ZZUMqRdU+xea0afnRwN8G+p3jOB57Yk6i/pNJkIUD+pBCB3AqbpQSQQ
	 7bQWdUhtXuIegK4M00uJDtbLP9x5SihTQFte0dSM3b3FBGcWw+c44YNCqEegEvAL0c
	 End0eMNfkWcwPhbI21WI1SrkvC9yOp/Er2Q/BiROXAL3Zyi3HjZ4oHUYiNAzY9QwRp
	 Zjm5ZL4jDxXNw3O4waN+8MnDSxCVcouMzHPPqY/zwAOzyTow4O2qf8EHKwTFS0qWiy
	 levDwgoAXOZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6DBC63797
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355368738.14210.16883283329463553441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954f2176edea59581ab2962cf0e8d9dcae13ec5cd04a540be4a27b3fdba03a1c
Date: Thu, 12 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673553687
