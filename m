Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B7D23D5
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 10:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB139C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680259865;
	bh=0T+ar32gKZtB9xYRfgLgyL52k/a0U9RPd1skFTxsw/w=;
	h=To:Subject:From:Date:From;
	b=u7e9rzNIPMJu3cglJW/h227Wk57sDPlH6PucPUHFz+LgS4ZQ0RcEfL+GbVw2yw6w5
	 xwyYKdtkVS4KPcb87IencnBOGrA28znCGmqLd57iFxqnTH6hH3sv1SPaSveHM7Rcuu
	 yFgvtPrIJ1YLLoVxw7FCg3ZRl3j1FbgAFTWIGmCvXa44mgBz8mILY4jcWoaZaAy/5v
	 QMvZBSKlqlqJcJyKKYrkTOQPudnac8AF1Lp/lopjZ7Se486WY8USDkVkAKi2VT27e9
	 P5Tos1yv9MYQg269BwivbP2pWWobRJIgd0RTFX1lq5Y27jX2YYRVVKiRgQlBTFc/gT
	 iKheNZUv1znAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE762C76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 10:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168025986577.7775.5341198248277202186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c622eb7ecb499e07d8d2c6700c9b93b73930699df678a6b56596831817872a
Date: Fri, 31 Mar 2023 10:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680259865
