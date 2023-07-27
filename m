Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B5517AC1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80C5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690488728;
	bh=TM4eebMYieKad+3Zab7AOhGxtPKCgythqLOR+SJc4HM=;
	h=To:Subject:From:Date:From;
	b=vKZRF+F9WZhvxuWh8d249sA3PuZe+vSjN6NTwdL5CefZPOxMEJMa9zbhozjXISyiZ
	 kNbbT2t0/Bjrq7hHsUI16ZBwIRHjrun7EUJ4Dw1ZTlBiasja4wqfVv36ZI6iKa7M1J
	 xOCFpFk+r2RmmT7Rl6lOnZdo1ZTWyrhzLM2rFbkxXcZo3c7NnktHzW5CQnsAPY6uVw
	 zJuSU314uF3TlUc4WjMjubAQGxozw0PdBbIVMA/oaAX+5igHmAhU5XFBLGweST+z/2
	 8Qd7AD7p8gNzwwOC1O9f8dWhLeO+WpwQzSt082yLW69nUxEGJvEMbSinjS4Pfaak0V
	 KSs4kjzHz4AQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9DFEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169048872868.26762.2643345101376173110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b242aea29f08348478459c680ad3645c6691cb0f631551dc04a517ddc3ff9460
Date: Thu, 27 Jul 2023 20:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690488728
