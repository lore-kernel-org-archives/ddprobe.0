Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A715672
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19B3CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682798766;
	bh=fYJFoWeJ4muHZoD0aKtlNNyxScMJqS6bXL1y2oPP6qo=;
	h=To:Subject:From:Date:From;
	b=TIMEa9stXmOvIb+eSNJQrwphpkhrmdM6XORmusloq5c3jVmgz345hDtgKmK+X60aA
	 Q8xJ7n82JLzr+3//JmDfWuJb7tjLffEF67iHOeM55uf48M/pBOk/OBN4IERPe4hW4p
	 Jy2I7ipIWe3SdbbB4ppABKvFvt4dnnE/pEuDReP7rtFXOlYand2kLjMQeAPr1dHQQV
	 lQE2DSlPSdUGNMOqqAC0tjrFXgoXozJfr5ryFNHeILcNwCPS2oHhdUgaBKUv3ABKFi
	 KvK3gLCYbRTJimrxZ8txIbZW1BHnb3IABomaDl4Rw0h24mN8Tcc5foExz7ltzzv0BK
	 EJqQv27bvTQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0FBFC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279876589.9535.17656608711972447368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f094dfa9e410b2d986c4e74b9b46c91545a3699cc57d59bbe8ba3a91cbc552c6
Date: Sat, 29 Apr 2023 20:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682798765
