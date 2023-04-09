Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496BE19A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F31A0C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681014666;
	bh=fMOO9EwofXKj2/NHROgyheGBrTatOvnxtrzY4+2gwbA=;
	h=To:Subject:From:Date:From;
	b=HCi60qhO8KhcxP8gxXBeaqmroC5p51NGHKOwei/sKi6N3xvVOTIYqtjM576d2k7go
	 A7v6JHaXr2U9bXpECX0AP7f/JbT8TCrLaQO2B1WBoWRtYxN7S+sJnLAUKRHgOJ1BSv
	 KJlVAmxO9Lh8oqoGVH8XxXc1XOd2IxPOxDXxZwCzRsraVKHBpuYPKJjG9vPXFF5958
	 aic3UnwC1qpm1t4ybQbsTnOXAo3sSMDNL24Brox/9wtcRb7Mp7DttPtb6MkOMRoZ2T
	 z+5q9bcb75LjrjBmASMeq8gTexUiKyluvz0m2cOpgG1okBGp1epwDeGKDhgzCpG4S5
	 JKeoR8Gof4hEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C6FC761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101466583.9429.3674900023125045202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8c374213db86aacc7eb41c8e62f724b145e4637a628ff42a967552fca87696
Date: Sun, 09 Apr 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681014665
