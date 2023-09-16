Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581C120E4
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 12:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C611CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694868308;
	bh=0gD6InOlRPb2CEPE2EMLyDGAyPMXU9BlslPNbzRXyos=;
	h=To:Subject:From:Date:From;
	b=cQr/j/lNi+HiCr7/RZvCVkU1WI3RnnQa8lulJ+8l/27oBHPcRLpuFp2YDDiOEyP1R
	 dW01gGZLd5mgKLKZJ6+Oq3cqs6uNL2x++QiApZmliBQ85JMHUe25Jye4/EmrPMSGME
	 S7yRCNZhZ1Jp4zGyhu4fkI6rXQQwCvZznJsrTRVpApl8dQVYu2kg3AIkqZaYKbuAuK
	 Ho5Z1MyFjgLCw5gvvudvD9sp8VYwG7h/Ubtx3B1vJQNkqMHe4NfEyhbfR161yz05Uz
	 J3nGGpC538+D/rZSvR9UQEcCywAYXGNzWhvRPTYr8MrWitw9o4czuaiW2kLW9ICMCX
	 LRw762+ac5oMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A986ECD37BC
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 12:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169486830868.685.8715124790654348118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c01c11f3c64e016f1d79798d0c454207bebc4ab21c0d25c28786335632872c
Date: Sat, 16 Sep 2023 12:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694868308
