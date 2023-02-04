Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D0E10EA
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:36:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C895CC4339C
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675521365;
	bh=MOD8GLh2gSVA1GzO5L0zmBIgncr8yPhaSCkQNUsFPY8=;
	h=To:Subject:From:Date:From;
	b=eencr6HYd2wYbyEoGVIOivWkVWC8RTnnY0UPgb1hik6o7bwM8DQvoZdluMfrAXaou
	 Wo8D79WeGWjIoaEjFpAiztzm+7IUJ4pnwJNgdgS08GUI6UW7qA4ytyxaHn4t+KnCHc
	 m0/ya3VjCXZcYmQSnfAixbGAHwVlOsfMCu6QcUPS1nrvmB4Kb1hY6jneZAma7HDxzM
	 adlt28U+ok6MDCdZZ95aj0S6XKTtCB4B2xbcOS3SDd4bgZoEjz2ujxRlRCAiKnn2n4
	 uy+zGv+fLbWgrvDXXHprEIMnfI8VGYmciwC8ORmhRGKuS1h3vkjnLLrj6aae6ce1BZ
	 w5a4bac0r36Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2078C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167552136572.24439.9721640432622678759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1f01c7645b478b3dda03ad7ba053152f84c0213a15ba2a5b3f9100a382331e
Date: Sat, 04 Feb 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675521365
