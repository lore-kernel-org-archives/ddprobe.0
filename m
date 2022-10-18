Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B6B4A3B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2AAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666097453;
	bh=/V6eMYFwwVHV89Iz4QFI8dtSNdMH1dS1imfN9GSKcE8=;
	h=To:Subject:From:Date:From;
	b=HvsA4Ws1hf5Lsdyk5jm4/KQqDCLnFUA6EANOxdyPLw2Ug0Dq/40HRW/jh8b2zbygM
	 K6Vas230gQ+K0nHBT2dj5g3Ew5FBRDx+5QzyGtorVq1x5CmBuzZyUPm25SuFJ0PfI+
	 bn7FZLN+hmWSdDgKtG2ZJdotHebBA76awI9aHF5BmVhp7/oKtHVIJDRyjynRr/t6Hc
	 Mz3iqJrEML0Achm4pPggV84xMaMwzMxc/qXkJ/MfJkeVFm/7sknuHWh1g+xLPPgubS
	 8ohrpfJbDMyQJQCfYkw5Efj6TpCYHlYZL8a0gs+oxPPDbMdNyIJUgAH/cELUfxIk5L
	 6EbIFyARdke1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5516CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609745333.13076.9721744584945122147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305269653a15b57f37c13096bf1dc7f4f944648559dd17039f70e1f1341540da
Date: Tue, 18 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666097453
