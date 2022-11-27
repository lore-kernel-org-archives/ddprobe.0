Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6398211A
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A87C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669543854;
	bh=OYYt6IFnPu3Pq4OjWgV17mGP+If9aj64WN4IfRbjraU=;
	h=To:Subject:From:Date:From;
	b=GmON/j5+wfipcctGYp+ApiVw1BN/tHYrEJSMfdOf8kKDn56m1M+rIaEJDVi16/WDC
	 ud6ihKA9l55oGn3laJZtFyrAIz7svoNhe+eXiJKooVKRUgAKL0sjnoQQ/7SsVhSbKq
	 28eKFPbMrY6LRfJd/8RBR9IjBOj3Thd2B0b2/UXh1KGi5rBS2R0sRiofK3k/CyxiU9
	 ptx++YHvI842CG56A0dqD/fRY8u7YQzdK3GVORuSjhebX9u8xHAauPmH/WSVIK5B5s
	 5NPNp7Nok1gWFEt5cY3c5zSfoFV8K9ZPpmaSt2Y5IuzGCY6lQ7D/IzCrMrphVAU1kn
	 O+NazAPFkD0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584A2C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954385433.30221.1216841986060794785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09a19cc2e36ebab25fc22aab9abb3f56a4653f8893a4cbec7bde37eb9e74f6c
Date: Sun, 27 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669543854
