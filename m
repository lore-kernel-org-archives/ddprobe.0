Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC9A747F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D725CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686319565;
	bh=1u6ZyJtUKK/11uAcK+qavQE62PNlbe/WGqBi/Gl6AeM=;
	h=To:Subject:From:Date:From;
	b=df//aXrVJ+8K8aYGwkgkfZrIGiyLvh+snSUBgZs7fRuzxO4TRh6Axz41aKFWXAczF
	 PVKY/S+Xb+6Pv7zfisx+z3l8bm6egKKmoxg7qNLUh7jkuADLzBxCgpNkwc1Tm4IOb3
	 Rj40hjdN4HrS+j/T/IPBdx5TQqjLBS9JE4UAvk6Ir5IVuCjFPUFcWmhZLbADlds+pk
	 5NyvML4bp3e1foZm4OusT3kIXc6ZYvNNs7q8TP5WE5SBljwOuwoxuJf7LPGkY9zJcf
	 oJaYhIG7qVqwo3HVzZCWtArGfWN7UrfyzxzH/t0gqhObD0X0xs2QWlObqvRAQfT5Ay
	 gPhmOavF9D7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B897CC7EE43
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631956574.15306.6191323882555831394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1879c2aee6dc83b0b509cec8d48dfaad69b73ff6d9a835f1c62d91b765ebb7f
Date: Fri, 09 Jun 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686319565
