Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA4A10E7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D14BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668408054;
	bh=UgrAS/V7CCoFYqmhZVki3MgahkwmnLU4pIiKwfV1RDc=;
	h=To:Subject:From:Date:From;
	b=lq801ihIEQmTVmcvYgqwH9AoQLnEfJ2uyuwFZN1gHsRuqZCqVftOH2wQKle5EhOOL
	 mVhgzysuEbCYpL3PJgUHgpXqsvK6nm2rY/R+qmkQ23HgoLXjwEz3brGd75z0Wn7S8v
	 NtGV9qgRnzZKCt1GoGNPFhxCel5in+wLhJgtOsx20PbcrpXmwJsAgbNwPCbFlDg9TN
	 zzQdzRvb6Xf/WxcsjfRSAHSLJsP82R4rk1OpMSfgAsa75Fd0IiJ9nokxcophiiHweQ
	 GDj2lxhlOwvr0CocZw/Gnq2P69CX6plNuAIrzsQnaPsLQ47Hh8+tmWPlBbchmIzEhZ
	 rEMjWeH5qBxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55998C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840805434.16073.8874715662509481704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c65b8470ea9b21018965adad5c46af2a0952e445983db5eebd60d37f5ca2ab
Date: Mon, 14 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668408054
