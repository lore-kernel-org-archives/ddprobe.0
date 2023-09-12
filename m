Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6583B171A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 06:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF7EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694499248;
	bh=oW0WE7GJ/yHyD2keMGk/cSLgX/uPUHrTmckrEA0vP/c=;
	h=To:Subject:From:Date:From;
	b=WKeAMNoqNz+vfe7i2NvlmXbAYdJQ2CgndJw/sl4rylcaNEnG/f77Tw0Suj4gDhl9X
	 jqvcVAtQPLT+46rjitcSwdH0k15L3XoRwdVuUnUjNVbkIi+ES3mbnOb9ybSb4cCi+G
	 yD9ESpy4pPxu7ZsCPb9zqmhWEUK/1TBWdbPJ2iM35KzTK/cmdIr0JsV8RtuntXcqJG
	 y7Zldm07rUeQ3Mx2xqEjx+s1t7YXGyx1Ag/pA0hDbGJeKUQ9gK1QzREFJ+r6zFYPzA
	 pKaHqL73xBxWs/3xSMBe1gthiICNN+XJ3HE/nR1ULtLrhSAS1CANlofs2U9rCyxWFU
	 vk7QqVlyTBwxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CCCCA0EC3
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169449924872.27200.7783584995080354670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa079360122f58d882fd14f153270950408b6c3c80f759a4f1c28603eccffab6
Date: Tue, 12 Sep 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694499248
