Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEB6C977
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ED7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681933505;
	bh=xHU35phptk+XeQetXOBT1o4Pj/z/VnAdP4zRHBOGCq8=;
	h=To:Subject:From:Date:From;
	b=aw9P0zVo2T810cCrIhIC4hrYjiFT+zaY269OuZZMqtcXOPsErmeGKniFtEOOPKu2O
	 Lp8lyjqq65dKV3wmU8sz7+0BJpwVuu0tzFH9rWjLWH37LBdGlx4qPrba3HjhsO5odP
	 oxuEJK3HkVSTjtQHsA4ZnalNVoUz6oCahin2nQNbmH/B7id5PqPmeeG8kS6nys5cIn
	 4edm/+wqyFN0ulfpbJTVZSFq+JOejsVQn6GzRVnzI0vBjgGOpQe1lWZHhBssqZa6F4
	 8wUSDjtkXbaLavtRvq/PMrIe/xd9GVmcfxHexcEBeUW5b0xX3MI0o6PJXYDF8WNxF2
	 LBxXk86m02DxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F33C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168193350580.20870.1013562109921899498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ea82d5ae9e32c983c953d8ba707c86c83382713bb93599081c434ebaea6a14
Date: Wed, 19 Apr 2023 19:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681933505
