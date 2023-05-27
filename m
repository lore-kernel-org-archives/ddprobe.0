Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DAB19515
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 074AFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685227746;
	bh=ARb0+qtWHN08uPB6xovn/sYlMFFBT2UVDC4DNkEwfNc=;
	h=To:Subject:From:Date:From;
	b=lcmIJkiRvnlYz6BTDVAUrDNMhaHMftdhqbQkbRPACsdd9WAgVqMQiQuoxzLqWA3h3
	 wpT71RCh+DZes8V1B2MzHfR5wlCb+YSOgJrWEUUi/AP1czVYmg/YJxrquN0sU81osQ
	 HoxNwr3xWFb2RdERj9K4CEMFdtbhWSC6RBSuF7SweVMrXo/1Z2F2Kqgq4+uXfFsL4V
	 DU9VE7ywWg7Qo0ITssKW1xM7teheqY6HLBHS/JfSjeZHJPuDy1jv99NID55UzqNRt8
	 sUm6SMJjRvyDyY3OXheXxVNAI+VotCZbIHte2zJongoq3Ct/dFlvvSJqyKkQ/FNgmG
	 AiHCDwGxyWtzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E3AC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168522774583.29647.2099691722018176790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7817dbae43c0ae3feaa38efeb09f045b5f4eb54bce3fbacbfa60b1f31cb6c8
Date: Sat, 27 May 2023 22:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685227745
