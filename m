Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A727E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC4AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690852328;
	bh=xGkHglu3F/lY+0Pqy1nt7czuwvfCnPI+sRnnM8KRH+g=;
	h=To:Subject:From:Date:From;
	b=JOmrX+g1roPL4yzdlFibpmOBrNrXamqBzSn5J5U8Hy2rUFugXaHmrO237gg7cJHUY
	 zu6dTTz6kEhhBnwWrBpYCIz39cZTZToowxQ2Sk2aauwrE20gQeUg6GJSLvNfWtIKuS
	 xWrvubsAHli6mC0GpWXOgRJIZ5lSly0LpqYV5osIlPmIMglCB1WwGUW96OPmLLkwSi
	 0/rSpHutn2jFcaZliRJIIOa4HvyZSekd6oUGrnr5tLFs+WuZTk175JsYjQ7jcluj2m
	 lCWkhpmJ9Z/O2kdvePjEcQd/ChUHFXTTOIj6J/CqdM1YIhQN8fxLMKC7mHWHU6EQYB
	 CFi0mbb2/H3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA618C001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085232875.16342.7437993333519398415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3443d33cff569471efd0e717f0691ed1aa09281914dbe19df60383cc4ee401e9
Date: Tue, 01 Aug 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690852328
