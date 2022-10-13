Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3B17B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBABC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665655853;
	bh=TL9Dgmw61IFQaJ8V5/1R12BIUXN/Mz0VL9W54SU96qc=;
	h=To:Subject:From:Date:From;
	b=p2j3BraEtbZ6ViYSLdKXzj6lpO3YkX0CF5469vx+pmDZ4h8c/02KYMsY4EH8xjTxh
	 pbaOMdrIkUGit5s5aZHpejilNnpeBQ3keWSe2CAVCGzMMXp2Qmh4Eq6b3HVcfBOaQW
	 7QcylqKBDuaLm9QgFs0ZkMEzcTwHkW48ImGCGArDn9GC8NUDeM8UihPCSH4TEN/LwJ
	 7w21gqnkwTzDuk6hctjfhlxyobl3ZkvXlE8X7dGE9znzLbovgvNPPjFPEO2w5L/QRp
	 BxgkRhkF30fgSMgYJKdsUWu9UH2wzqMtfD/dxggitMbDLTue5DOHbxBzbwb53BOYVn
	 LnG7YbLgQv96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EF3C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565585339.5372.980933926921656835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff7b1aaa3f534c7212416e7fde80621666b6499f197227e3d98dae9910aa119
Date: Thu, 13 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665655853
