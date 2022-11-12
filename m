Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C4E63DB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700A8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668286254;
	bh=1PAJKD9uVWqq5UEa8tzQ4P4WdGUXZ0heXPBxFphvJKU=;
	h=To:Subject:From:Date:From;
	b=tXvudVDFja9OvPY/ppPmOiLx2+dCdLnn/o122ZQL81fJmIz1Glsrcv5+vs/e8rFWF
	 KE1dz4pdI20xQy2Sg2bv9b2gats5YS6wFElVcAwg8ONAwmZv0FF9LvohA3kkjyARQk
	 SEazBo7z9EXktQ6AYOrS3CSjjLZELK8ZBy0TStWEt44bLRnkBiM2O2zZs5hoFhkiyM
	 Scz8VomKOvEP8hocOpTIkxt+KRO3wMGm7j5lSQ30vsmTeIuHMa5jWS8QYvpgUP0qhD
	 JlALtF6qjwHAp6CcT0SEuO+SZjftzoDvy17jkTophT5oxXNEMwQjGLMx7+1k4qkwxK
	 RkRbd5FnvM92A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55693C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828625432.21261.1627819960908864833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333b34d6d387aa6ce482bbc4292eb6452976dce251e078d26dbaf477d1afdd45
Date: Sat, 12 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668286254
