Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DB433D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0F4BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687930389;
	bh=Pof8tmvzueBD5pbGT/5KbzJC90Unr4DaAbeU3N+iFi4=;
	h=To:Subject:From:Date:From;
	b=HgeqzIjJYPT43ufxIVfpXiLoKh5ngWusdbftWxQY/i3yEd/Ktxy+LpaOCoLekcYzI
	 TvDAfrGNz2jZqxinw5Lnacm01gT3HQoonkcg6gME92zrvLsekR8Bd44ZHUlaxldqWV
	 naXWxWBv6CfzE56sxcQbyp5xrXco/uJslCdkl7nj/CIrtFa483iGzjrnFulkI9frBX
	 Qy9Xe9xqtj9XOqywDEvVw/b0YuCRUPXhjxpCTIsvJQv/oz+YIPf1jRmseCne9p8/Yq
	 GYRo6CIx9zQLR/crfMubzbdW3aZvt3NCIPj417VbkgoLztEu/OjYXfxLyUJi3I3YM/
	 mq2E9lY7mxE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D89AEEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793038885.17451.17373169892334239956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3bc2a495c7d601f962ce8e0c3830871b327c56e8b5ef0fab18a03b6064d5f0
Date: Wed, 28 Jun 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687930388
