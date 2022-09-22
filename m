Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB371851
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE5BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663808453;
	bh=8mw6HI+HPmY/Un8mETOEHIb7Yr82Y8lsiGKjCCwaoxA=;
	h=To:Subject:From:Date:From;
	b=rX9BLa0ds4GaHY08qZVnJBywX0xQZ/YyMGMLfrIfdi1SIGR6QWU6jjUZ1XxTZ8e9N
	 LRdjAS3j8ObrkvKdlU5dMrHR4farSBVnaDt5JxRWiA58vlcyokivPOhd/43S/HA7JJ
	 Hj8e3ckO4MbkkVn5g2nooRFLHLQo8s9HU5iwSGvQaBIbUPIM81PLXIH+cdrY7s2eIf
	 uqhlZqHqXexIOdnzIIF+KdQy2uipHty8XrmGvGzpz2hiQSeldJIjqOpMYeIYCessrN
	 qfGrg9pByUPndBz4UvthALLlSCGqCKqJWVS1oltjyVbiciM/GLLwPwVeC8qO5ucVxT
	 Z6GPxFEXLpkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5548CC6FA8E
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380845334.20969.12482477509781062860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cba6fb93ba001a5452a7fde78a07091ef9c05668e083e4c5b39c99aa3a8f8f
Date: Thu, 22 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663808453
