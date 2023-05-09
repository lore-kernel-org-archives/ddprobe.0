Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D96116
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E758AC4339C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683640865;
	bh=s4OxkQQrfW03JJhdVRCEibD4PC5SoJ+XmQpYTPNLsUk=;
	h=To:Subject:From:Date:From;
	b=HISQigJfJFm7lJzE/K8I2tKBPVtuU1fmPyo9B0rlB7KEqFXOCBlbRicOMA3p1cFOC
	 I8GJmi164t9MOTsbS2dW2j1nUzrcWVby/ho2UH9YszEVf0CRwzWTaImi/z2NlDyClx
	 y6cr0HHlx2lPNhNJI7NZ2Ent54XBxGA+YbXTi1TSnPBx7/odRM9gxtuwrWwyWBlG5C
	 zC4RGeMF7Zt7+Ry8qG2rBFWJGaS3PrXi6H0I1Pi5Af6Gu7oZjLN9PkzKbxHPrl8IsP
	 kTP4qr3NAxzXQ9cq2zock7h4EWUSbHHdaOcLbVmqZhaPG+1cZCUo32XkzUT+oAwXXn
	 9862zYae87TyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8357C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168364086580.7547.7269865602116775598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee5a0d98f0bd9acd342c2b74ae3b32c9fd5be6d03cae8b47112a1e9c49d0ff8
Date: Tue, 09 May 2023 14:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683640865
