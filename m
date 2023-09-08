Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30D14A98
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67F3C116A5
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694196848;
	bh=cfEWu0XyzUBKYiq0u8EwxcC3be+d560wWjKYlLntct0=;
	h=To:Subject:From:Date:From;
	b=vMbw9P0Pcjs5sFJcMPwSsIbWSKUMzb0Ea4gzTkvJiSl71zcC8aDqV4niPXpd689kr
	 8FrJY7YcOP7nUc8rHXpH3DYmkgNcZCQyjE5fwBJM85F9vxwtGEzl0QnQ2FgDfKGDY6
	 1ItJjnZRxdX5odHht4CSd95f6t0tvF6Ds76kpqJ1zou5cdmmVM4MAqqdKmoU+28LE5
	 x2jiN3nhH1WxgRZ7AmlXPfJWcBjcRtgRraG470nJ3stcp86yfg0S1w4ktvjw6koXxj
	 JMloYpSPGpu/jVGppe2KhAl3BAYwssAv3j/ZUxsbiOhmRjXo2Yfg+1P/bpd6buLhoA
	 7Akhpo309l+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2578EEB560
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169419684872.20466.7470409052270967614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5a0a4f3ab792b8db4d3ecd83f59b4289cddc7ddaa45bedb8c5dcb26245f66a
Date: Fri, 08 Sep 2023 18:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694196848
