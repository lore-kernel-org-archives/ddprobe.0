Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C088929AC
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA42C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665597653;
	bh=qOINGUdSTb21edW5KGyOM+Nn+adqPfiTBdLkPnpkpnw=;
	h=To:Subject:From:Date:From;
	b=CXeV7ReZBXwZ5cT3TVs61FU0GWF78a70/xHIc85iSOWYAbnG7LTEzhCUSM6SMShp3
	 jli4h6G35nmao8pfRamYJ+FIQeYQRHLysBGTmxHXmcJHIKtGWESxfdETP0GgmLQsVo
	 kz1U/ylxqgewPsaDCh08nRQzBK9AmzuV7FW9NEthzUEbYSs11oayLA61d0kezhL2hz
	 F6yHXt8Mjgmb1TnW7+rev+z2IHdg2kM+izDyD4AbDlMV/3gQQ6gt9jX6zrcLQeqjgs
	 2iiC15YHHPORvAcoc1aleYP4987rOKGU3sTCJJP9u6rePBNHM8U2gdzeuUufyTfVmh
	 YPQTxtSYUz3Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541CBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559765333.15567.17570327777419247727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b493167fc109db52c4f2ac06d788f40e5797bef9512dac01f1e75743a0ed1a5b
Date: Wed, 12 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665597653
