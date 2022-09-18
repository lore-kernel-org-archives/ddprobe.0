Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89361375
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF7EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663516253;
	bh=vIPd6DLhlmTuBKRk8DoIqS98yb3y4/Y9XSpVdOT5s3A=;
	h=To:Subject:From:Date:From;
	b=mNzScQApSLoRB+mFcshsNoq3NHaMu+Zw5uP8BolUT8wDgAoG1WCiVu0rrEMZuXnx5
	 2bGhzyQKE4TDvGxSVzWm9xj6sS4xQH8wijOZjdc7QQA6OZw7AV/YvRwuh7sUmL+1Mm
	 rycylPlzezsQrv8XDesVBZd3KDCEMzaZ7McsjaXgB6a6fxrZ7kxbao76XoHDMSc9Qn
	 JMjMCYeQM+6O5Ahwuiidk5tcNp+9vdqSuFjpYyw36nWsnFR6ZJ61JhUKb8w2N4xH4J
	 Hq0ctgtA5D/yLMCrfftfQGeDldGUnnzBTih8LKxvxz/xZ+qkBFC0q1jMgpd+YTic22
	 mNLc8zqb+UVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC7EECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351625331.2368.17439073289480287398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a3d85c1f84510116cf6e0132f69d3e59cc04dcf5fc3cb64ba16115b8dbb583
Date: Sun, 18 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663516253
