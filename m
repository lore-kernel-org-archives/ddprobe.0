Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4F0363
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8861C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687483988;
	bh=qxSfLF2AovBBQmfLwdr3UA9hAThvt/25Dm1gXIlyrD8=;
	h=To:Subject:From:Date:From;
	b=QnaVvZ7EjDnb+AUUuN3Hc14VY82+DtvltKLYpbHbwP0ap3Mz6Fmm3OgdrgYFgQ3RQ
	 xY3ccaZ4XVeIVr4ay9tL+UTt8sfqe+xQINax0nYG35Y9FK9np5H5Zy4DLvAirReOuC
	 JzIarpXxvw2ZgXrWymjLoapCmfGyXkziMD1dq/ZZAC+D4fWgQKpvkSP/J6+9outRsG
	 feKQwCcgM1JZkEFN1USdjl3/LaE7UF1m343x+0g3ntPoetcQXGJStW2nndsM04V3iB
	 Ydm93zVEuCLQX6mrvscKhU/YnEzx4ETWLVr8ZO2+2cHoGve2esvvJk64eMFXe11Ih3
	 LpwBqYHhMmEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C6AEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168748398866.18219.1516346520255013295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e58b7aca46f711bee12248c624ab94c8952719add3a666681c6b83104086804
Date: Fri, 23 Jun 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687483988
