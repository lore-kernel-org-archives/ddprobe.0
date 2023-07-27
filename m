Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781AA2CAB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF37C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690497128;
	bh=fEHzoRXmJlq+aDmr4EJZc1a3/W6Vmk+kIPo9O4A34Ag=;
	h=To:Subject:From:Date:From;
	b=UKlTXevNtIPZkyfXJH07NRaJAfgerpr2LoqbHQKHE70UxybEcLodK3OrUzNS8OBjO
	 DafrSY4yizBu+sb/Tla42Ciz2121HFsoO+/mUyrVx1+ExRLr5xpRb/PbQgwpj+XXsQ
	 /ZmL0I9gLKLbN2gplk38MGOxztwSWKwOv7HGX7H2Vnw+S3aG/1JS9q+KaI+ZCwU89x
	 uEssvJfHpm5bJT9x6YdYsh+ctmiGldoyCscww3tLqUuzSrz56iL2HFVeXlnrvjiZxz
	 UrAolTOr6+ecQkIo2dhaG3UEXmsl9e9j9wWMN75MDoVHa/fHtZYpbvs9x2hBHFKAQ3
	 k9J0Owo3MMtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13CDEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049712877.20417.13865020445706327638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e309d01724e32a6864587022416be40ebd72facf0cea85c6df49dbe96e43fa
Date: Thu, 27 Jul 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690497128
