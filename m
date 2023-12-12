Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB316FDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRhLSG+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716E4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702402096;
	bh=HiEy9rBWCXwNwKFmWeNRfJuHq1MHI++EUjGDbxbKCY8=;
	h=To:Subject:From:Date:From;
	b=PRhLSG+lKg40AiiaUmhwY3RVoQb7dkN2WYy68J54XxrI6CoemRaAsen+Qx3gselpM
	 MMZIJVK1iD0qp2oipcV4PLqTpyge7kxgUepG0mA//H/pUmGVV7pA2gDeH4by+y/O/8
	 OSm6CD7qcRtqLcNIWesSdAiY+ZSWqtoLiQ/OFYHqNqiwwmOmtb26dKeI959y2ydvww
	 yZzARG/hrd+6VFZN/fQS2lzcYzCWKEOUB2b9FUkfexe4c3/f+llNaxoQ+m4WEHJX3b
	 mhT97GmiIB5bII+nZ4qCvnZAwSEVD8va5dWjO5xoZiYBuOf73VmHPXFB/slT7lZ1g5
	 wIFz9fU+izmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8F8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170240209636.19699.11321077507497300652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d318d6f4720f5b6558b8f07f43b536b13e96dfd0a9bf20c39fd53723c56b08
Date: Tue, 12 Dec 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702402096
