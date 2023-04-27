Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B422F2B
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB72C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682605325;
	bh=ooPcm7mYdSqyH2OGVRQ+RLdlzQR9qPijNg5T9M5Dbzs=;
	h=To:Subject:From:Date:From;
	b=hKidBVt6N4+7XXSqBF4kExDjPMVfyzGgKHLFP6YEcqUF888jOtzHCugGx6Av3M8rY
	 rzhRDCv3EkW/C6PUXPxZZFK2+4sfMDa62b29nfOGOIDn8fGCJj0efUKKAUC9LbqVPj
	 iJSfHatmz5amqiNDH6xhYt3ecuCSf8xSa/Zif7np1UTOT35divK9Fp3y02MTOtLcnl
	 IYDmdrSYVlNmGmanSTKt2jfddpy6Cfw9rjelYoNTODpj8wyqMwHLNQRwH/odwfvmiW
	 HHn3wpWeITqPd4b7LGQXteADH+XzRItMKrVjwcUC1LpPQw0jWgModKuWowT5rOcM3g
	 sOhNu/dUPcRjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6A2C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 14:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168260532576.22851.1833829902869316062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510e030000478dc945cf1911a67ebd51cf97c7c513ae9759e1597399a768568b
Date: Thu, 27 Apr 2023 14:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682605325
