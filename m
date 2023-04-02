Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2447C
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08C2FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680396906;
	bh=JALmeXT8H9E/2BnIig2JiNHy/P9Pq9qUhddfLUYTX3s=;
	h=To:Subject:From:Date:From;
	b=S6svcaI9GBUopGEhG24tVET/q36UKmVyn8IjcX8DoLo+3jIqgZqhxmA+GQFC/zA3H
	 OBvH+mL4j9QAZdERAP/7fiFt/caRL9u4bY6/TLaj12MtlRyaPrqHx9efzC1EmYDwFL
	 gx4xbJwBTupO9lY8WURaNzr2SMefoXqXluC8tI0HkU03UVkD1MI1DYr5nzObwA5AV5
	 JxB21IChSn9mmeyCh0HwW0y14GdqeUQsUYH/bIDMAgM7SsXrG8sXTTUV0W6fXcah6G
	 7OQufM8IKXtL7a3PK01+h4N/3CnyW1trAlhxp/sBn/xvh8qaEEQSkGELKX1e0ti8Pf
	 nalzEcXaJN6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF164C6FD1D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168039690587.2221.6882123697029362221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3be6c8563f09cc78dc41e49dca4f8e1b6e69b0f4725e295ec6057c1b0d719c
Date: Sun, 02 Apr 2023 00:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680396905
