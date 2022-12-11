Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38BC3236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832D7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670791887;
	bh=nzlAHuHjxcRMF8lzEAHSIjvmicb7ZRvWL7eWNI8td3Q=;
	h=To:Subject:From:Date:From;
	b=CwO+5iQmGw33dr9UUb44a/H9LkiDjWzV4GUa9npIOFj9y9bJChQfM5Y2Tz7OcErI5
	 TgmhhnVgg1U+ZtqB+7Hkc7o55OQQ7vaXiDpG7v0yxRMKWEqbLFHmnwrupnm2/sgp2M
	 Djz36eDTugzJ4ztaA4OVEacvZh7iEn3fnYdJXmMyytJTb9drUr7JVNGM/QJdo0vupJ
	 8mEHsoSmdI6FEkHEl04L482DzbWR2rlEHw5VcpUooL55RArKsgogWkc2wRjaQxjNV5
	 cKHusPJPeK+IPVbMqV9Twfxj0BsKenETN962N8GanUGurNesrY2isHocENlv6THreJ
	 1NCySEF22LH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637C8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079188739.19438.10588723038916214159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef1949d2408772fa0880c7db0af2642feb1d074706ee69b6ba143d4999c2ff
Date: Sun, 11 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670791887
