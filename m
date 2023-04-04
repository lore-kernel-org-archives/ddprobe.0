Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FC37F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC547C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680592625;
	bh=e2uTaLlcD0lRyWhjMd4R42n6vCJo8bnVXr1AmTCKNuA=;
	h=To:Subject:From:Date:From;
	b=KS937LKrvBS74/WzyIwwLUYYMXeCRnMNXHtEuiAEjDld/l1J4Jx3RpupiDMS2gXYP
	 mYJpom+6pMYhMT1JLGAJjds0T3lY2ehnlc35PIwnCXts+GO1G3y5gCkW6cxNe0EUZb
	 ygsRw/HlMu1Us3cY5mICvuYNB6qDpWclPj0nIjrasKwnUmjFeq0/LJPxG9LpZiDVfU
	 gx/ZEgeeY009RXxijbEfYHwr93JAeL7UvFhGcOqjFkeY7NN5C/2oAIaMXwjQpnZQsv
	 YU/ZHbRXUm1hrGcW9lTRutELT8Ipp6HzD0ziaaGmMeVkJtfvEsB7LPPxu83MqyMcm+
	 A7kZTpUfx3lxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF754C7618D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168059262577.20134.13126297972598232857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d379130cbdf8c69b6301c179347442f782975741a35fdf4cbee323c95a46fdad
Date: Tue, 04 Apr 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680592625
