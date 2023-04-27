Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519721FCC
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 08:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9FDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682583665;
	bh=5giVq2uOSgItpn2qz4DE38Ug3UkOUmXcQ/fV5hckVqE=;
	h=To:Subject:From:Date:From;
	b=pQwuQA6X0pFfJlu1w/ENT8iQuoQbMmKN1pOmDo5omyG7bURAyoLnFjwTpYRfAwqGQ
	 0SgPGQnfeJYvbD7qfhix3erNGbh3rMXeOYlKo+Y1UB1acZcy8RSUCtZ0FSgItrg1cy
	 qucBrE8NeHqOM6W2M6Mo9HssDAvW2lQaDF2RfTIFZvaybAuHwkVYWq+nKOJ23u7VhL
	 apGJXjUXoPLVarLnbgl1Hl+qIr2UZau8ibtWcegQ4QBerfPYZaeoU1iwPvjoNxKyIj
	 XqherNqaArdZjE+qagyd4ss5cUaycOOJC1Mu4CSV2LcvVhlHaIule1l8qh+JqwpUZm
	 Rx/MIvgGpS0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7E2C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 08:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168258366576.6434.15891236454246309792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161f6644508f840d5fd491f6aac8e8a064a3d8f92566cc23c0a6c3bb0ba020bc
Date: Thu, 27 Apr 2023 08:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682583665
