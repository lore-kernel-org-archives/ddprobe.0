Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F67A17FA
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2310C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692952448;
	bh=ojs+ioUKNTEE0wWwZdmFlaJ7Pvp84GkdrX6L0FsOp1o=;
	h=To:Subject:From:Date:From;
	b=r4vdkn67lNqeFCEgJ0puZtW3Y9E4g7bJUapamvs18TEnBfTuUFuhur5skVDM0uxDm
	 3ffcMIP9FFV0jZ8KnX+1sBQIip3NDyKW3CCwVBNZOsgJSfz370qCC9aOVEkq3b7SEC
	 pmZQklrxhzIUjc7U9mcEJWYFU6LnIbD+hy3ZoEY4pmnky+ju73xv/1TeedGcfpXtZR
	 SUf2y5fYsk+KK1xd6b20eSrH0Q9/oKfNIMRCjIZKfmTMFW5vVj4xCCQS9A3wQz+Jhd
	 hGPkaoqJPanTrHE7CW566/K7K9uhitQCsHceIZsTo20sPBihQl7h/zsc0KwOCbONvq
	 kQCnZtKiMQUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59AFC71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169295244866.13757.3513417939424594407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ecfdbe3fb98bf0e3eb8a1909561ebcc1b1e594d4ae8179d9da930962365a9b
Date: Fri, 25 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692952448
