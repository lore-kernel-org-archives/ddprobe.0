Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F2810EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8892BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672998087;
	bh=MY1+ODN8pDYELOJPyHB2kZL3YXDfLNWqgw2sQ6KMf1k=;
	h=To:Subject:From:Date:From;
	b=RgWeRVSM3DTErlKl1Nvw0APpUB4K0ZSwalpqzUcHqWv+gHY41XEnGSasqZZElKEmu
	 jAmyuujgAMFeVikIKYKngzhoOh7WWe/9OStQGZMBVrW9I4BPsiG74RsjY0i23096Hy
	 eGtq6MGBUUKX9Iy7eI80CfTNe86/IcmXtaMYlDjTv8fM6Me7TxL/z9nov4dfujRzdO
	 wzYk+Wyibn3B5Eg7S0QzvTlczcQ50lg1WHzJvPmsQVERzSbbn6Tf1BiaYO5WbCaNJ2
	 49bREUBX2V6zjefW3GOJ1fl/1H4JX/ERRDu9kDT19upLTfyOXDx2vFTtE3e8EVToL2
	 rKlivtJTdyvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE30C5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299808744.27605.10051497014042459839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d288df04df22fbbb84264c5602c17935d602ae73c2e17d29ed09924bd28330e2
Date: Fri, 06 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672998087
