Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171C9111F
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/zfvn5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFE4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702096696;
	bh=0ySGy/Gg3j5jv2Sz3aGEPNAEx5hVRX62wEFEWRAXvR4=;
	h=To:Subject:From:Date:From;
	b=g/zfvn5Y9V2ja+KLkDgyUpCCNulW9pmDe08Q8YdyNqs+5fgH64GrH3QctBuZzQ43X
	 6wkDWFoQdkXe3DTF13GMvXfhctQecszcIUhmi3RdWHQ6WP9De50BhQNlz6PPWeI6+J
	 SyyvEu9jVRvnL8qR8ct3/E2xyshusU+oIM5G9VerOwsx53fL8OQHq6hgIViwdDPmhz
	 4XIFjZKRZqx2px+yjrgKZiSHBUGpgyxqwVO0xSX7HRa8aD9R1RFmSnAn5vc0rjlIeu
	 LuAbxXp38uU7WOp21GjHVQjbIHq0oPKvUqxvnSWXcDGFsqelk+WeNFVazCcOP+s5AT
	 H6F+zmG1HN95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64769C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170209669637.18515.12258852687930488898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31a110ec10c7ea06d1e509598f20026c7491f0cd42c24093b50ae8d12ae152f
Date: Sat, 09 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702096696
