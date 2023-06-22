Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC6017C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF88C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687397588;
	bh=Q5vsCgH0zxNWf7NvtgoApAcxVfJHDryMRTf67xMU2Ks=;
	h=To:Subject:From:Date:From;
	b=CHJx4gmB2UW2H8s1547T0jTol7y+oOV5/9GnLCrNBrSOaX1T3XiZH0148v20fBHqt
	 j5IfKkMYmYJda2WA7Khphv8m8eZnxZHZlITFxgtMJMl6UUoZXLFav25ycKBS83d4B7
	 lvt5l8OZZy9/Jwnpk2bFfaN7dwmT4jE4u3g2Jzz9AI8KDihlr4KjaoSTb7rGKoVoRD
	 LQDCC2ic9NNztVpmuvGCtL+XTdp2iyyAtLU/4viycSoCQDWUoFcrHCslVcyB7n6vkd
	 jXZZkEkhdftmJX9TLzDhwccWSo0Co/WDz9i67esxMh69QXoo4b+cl8vKSVHv4GkjBO
	 lgE7SYmKGXuYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908FEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739758868.12537.9785574088764417713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3374b2e23306a17526a56e285287eb9eb75a10451536fa97ba60bbec413635b7
Date: Thu, 22 Jun 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687397588
