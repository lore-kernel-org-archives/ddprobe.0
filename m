Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B201E10E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721A8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666764653;
	bh=nlBnOrq0xSjed6vqW8ewi5AETUekkcu1PiRwRMSiT6g=;
	h=To:Subject:From:Date:From;
	b=ulMtxmcx2UZ8SeM9oceNRTihHq/cBf6pED8aWoxziyHtZc2MeCuxIvAwKPsr7kV9z
	 5So0/aYLJxI9kjDvWzYOo1ac4KcuJz2/T67KczyAiHA1CU8PWX9fL3QisYnPMWsHol
	 XAwXfnHkwDfIBLt9Wi4c1bUHbGHK8HdCz91EhjOAdeDdUm61twPtY/kgzVr4kPpI7U
	 zgZUNV3I631NvcOyPi01e9km+fOLSjtrl/D4jcyGQC73rLfPlDNACCaC8rC7KmMjMX
	 1Qdolq02BrkWPLp3rfT6Dvo5/fZNgDK9MNssWaq+EUsjUC4fnar9MWiru8VZYeyimP
	 ZFdmtNako8B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CF7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676465332.23472.4082922752405283238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9858827433cc65df2729d58cfb60a9be7826bd16b02d8059f651d11c354209da
Date: Wed, 26 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666764653
