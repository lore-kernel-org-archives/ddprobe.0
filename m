Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13288569F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsRzRrmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7585FC433C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698928696;
	bh=XxY5TCsW+XzegHW2p+kp67GJ3jTo/REDuD8r+Bcaj2Q=;
	h=To:Subject:From:Date:From;
	b=JsRzRrmItrLuPDrZ78vi82xcuuJ/M10BYfUJlRW6Qx+QpoFidXZ4jJcLLnZnz+K8o
	 PhQgKMVTgNk+ukG3VpGaMC3wW+KBfxMoAIJeHNaydkGWPXeYYwXq2X/FPcjYvEkBcn
	 c0u91G2DGyRkFiusMJXNM0kHJ0MQNlfWSZ9m4/xPIq0UhRWQj7V3vM56/X7SseifPj
	 GjxXmnWQtH26yAf9jtm7F2W2Jr7OvGOVdCroRKDMQz4FoPUfCvz6Xx5PIZgGzKmbtF
	 Oj60H+CLC3KJqkLyNgzivqP7fJkrMbU/yhcOO1YsLY+4y/X+e90yknONNTYGtHtEiQ
	 xBXQRGZ8xIypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8D3C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169892869637.12803.2862218848120211746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74fd4f87de8be404f40c1e521363ec9227baec4ac92ee51e4b97fd4656ae31b
Date: Thu, 02 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698928696
