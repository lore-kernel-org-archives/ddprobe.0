Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC8227713
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81952C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670346054;
	bh=noLtD2h8ffA37wGbPP/3athAMkt76SzZt59VUPNQ28s=;
	h=To:Subject:From:Date:From;
	b=Bvcg8xgeWCrLlwuN6MJ0+rvzOsb/OwFbGGmbGh/AwdkCFZxXcc5nEY7YMQ9oDICC0
	 O1kpVq4/z3tbeK69pPD2PDGC4vkgPGBVeA21bR0KXEmM5RrWewm+2fImgMmmxW0+JI
	 SH3Rp6oXP5fHD/wTdu/TrweYF8rnnE0Z4gXg+oOtnxSRGXmdmf9uMcAue9CBg/JwnT
	 Jziil40eTsPHCKHf1tVEwaCPWKIyjVCJ7QMIL6u+/2eBHbpCrXnXC7f5y0EEHjrGJq
	 VciFpLnku2zB/Ll675u+YxFj2sjbthNi4ku4TcdwuK5/zw1aU+ly28rCKNFCfLRHpi
	 5WNHNCwPLmsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6437CC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034605440.3220.11761922609324741401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc4da0c6907feffdd96fd280bdf8692580d5a1f4e84face00a9f34cf8189303
Date: Tue, 06 Dec 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670346054
