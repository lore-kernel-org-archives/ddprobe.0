Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FEE4A0D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B716C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661961653;
	bh=z7E+uC4hDXy07blV1gS+U29bHFwon/e/FdGagt91s8Y=;
	h=To:Subject:From:Date:From;
	b=HCjLNQ1u5YeH+jxKn+miG0un5kcGefv7kR5cEdCFRNThn8uEg6F/9tD9qjTIWXRpZ
	 3Ue8vfHyBrMbw9xBeL+ydRRTKsbo5FPTxlUsUhUhSxXBqORkiq0XVxHbCfwS9gMf1M
	 b9JxvgWVfAceFLO0B9BqvMLpgmYGRmTDZCJt+fE7eiF86G6P88TMi2nmPNSEzSsVlH
	 CFQE4FZ06iyFY3RsCbWaFKwqG6yrYl9yKD0q05uTA0AlrQy+EvoNssS859mO3GUOqe
	 eujhFXq3qdbbL6RdK3EabV+s3BJiwyLH2VThoIOVay2G+pI7AtUURTJMZvZ8UIqEaQ
	 btWSCKQ7EB8cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BD1ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196165332.22067.7963721316445265529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f92004a00c35f5fb0fcf36bf16e8ac985faa6eae449f4396cb8644a6bee997
Date: Wed, 31 Aug 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661961653
