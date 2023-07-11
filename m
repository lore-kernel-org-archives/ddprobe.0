Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2C317AD4
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 10:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C904CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689070628;
	bh=qtZPqS+3IaWOl1HkaD1Yym3Jyp65Ccp3gg/K2mcndUU=;
	h=To:Subject:From:Date:From;
	b=tubumpt58n6H7RIKS8zqhAcG2S+QCo/MmDFRLU7gRhkn7zMve6/baEkgVNke9CLF0
	 EIELPaei2OAx3znUzYYIzmoMYGYJJ5XikVCStLcLj/GMO+FFWFzosjypcAm2KQXnSx
	 o1sv2PRvvFsqInjdq3pTVUqIB9sxr/c6DrB/hF6hhGpsQbd5eOz0XPlhpDnt/yMVVw
	 +XvF5qJYhc9qals7K5x1t9gZoCW7FgbNzr49YWQunxuvokW1i0NgRDy3ZE+PLdC2O8
	 ajemMvCkvQbJ3cHhWNAo6qiGPDEI6nPPVhYKx6qKrpF6ltp8g4SQ7B3DUoSRoQq93f
	 4CjBxvEcOxuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC52EEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907062867.9845.8949437816790975759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840c373a21583fdd5b669bc10ab3a605b8d74470e5e54b8155197d7b85a8cb37
Date: Tue, 11 Jul 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689070628
