Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F3E14F65
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0530C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692291788;
	bh=3MQOByXXoMtl0TBR+yvW6jKqIJkNjM8UvHZNFe4V58s=;
	h=To:Subject:From:Date:From;
	b=b1D6P7uezT69y/exD8OduCd7VJTsnFTpoojAxkTgqWGKzAWfNxblYoCphpapcrIBx
	 hBgoPm7QgnsrPr9a59cMs/uGjp1F4yYB95wzJ0c23fhuzbO9hC99Jeg/Hg+xsZ3uQ4
	 syreZSBLWK826JTrZqQLksjIGI9hmHFKugNsAZCSCaFwr0dlqG35b69aSdq3vKTwaQ
	 AyUB3muxwYQuaaIBCMpcpCuXAagYHi0SogA/X6EkrwPp7J+MK5HpLK3ZyW31/sS3OB
	 L4wk1mMGAHsw1AwaHUdbE0xJjoBRJi09rc/JwNRkEaJEut45HZxmtrE5HF2ELApUr/
	 UzFLlXe3AE+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAC3C3DA58
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229178870.18734.10303382341128783106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8acc94dba985aef5a0644fab606bca0d8c1381fe6914222d97b17aa47f0e24
Date: Thu, 17 Aug 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692291788
