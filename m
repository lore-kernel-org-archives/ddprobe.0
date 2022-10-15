Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F64373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C11C433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665810653;
	bh=wcfxTltG/0GJuayDS3vAtu2eq/6dr13HlU4+vjmUwAE=;
	h=To:Subject:From:Date:From;
	b=iQOu1lTgMP8yDMv3g8WR/aDpJWh3iP5jnUggys1RLEioEGexL22/lWZOk+luGvvrM
	 LBZLMOL9EhYWR2MFqkGmVZlbKKAW8Z3f8BsZxBoo1JGI2Mw/7whYexHWjcPh3nxUPc
	 d8KwdAcR3ThghKywvq+VjTOVAisMhrxMQGVuelW6o+uVHG8eNTeSInc40rR8JGGvY2
	 yh1DGc6pO4ExMfAnDCHVD4tZQyCNOYvkcAC7nWzB6dxFT7YR0BltyBIpTgL8qyQ9jt
	 7ZuRl9/cJaC09/ZILVus5NMh9iPPFPB5EpAUVJyJakGejygKoYbx79PnE0NBXiWiOG
	 pp0UBmQiOVTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A96C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581065333.13869.8318630465271955620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a37984a65305420b36229da979da5047f42636c50761f483852946106fa8ba
Date: Sat, 15 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665810653
