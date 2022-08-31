Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF184635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A48C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661917853;
	bh=63AT3e972D+IxhTkhVdPjKQNF0VGlygtnguloG/nH1E=;
	h=To:Subject:From:Date:From;
	b=WPbf9co+tLaUzI1zXH1xGk3r8g+GoWsERU/B0/QAvCkWojEhYETgaDj+phJomn1wH
	 MjdbEV3pVOouubfCZzcgcUdTNsBQO0qciaii5rNCIUA2FolXX3a6MgUcVryL9g359/
	 vi9kpR/9oNwqIKHQEeSXFNZA8LghDIZb86lWVT+eTl1hJpEMiqtxPYk29V7TI1djQV
	 w0sO+UChuuktRNc8N2i15n9oGKg5JAJ+DLHFhWhiBt/bB3+rqn/duQN3yIpHqyuMCl
	 qECQABZBeaJJQ3srfsu5hHET3mrAilaXWhH1+KYBrrFaO/paBC49Jq2JAAA3PMvtbZ
	 iTE19KjWr/Vhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA8CECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191785336.6447.4745345879256761530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f34704e38a1fd082d356ae2cc498a87b5b3c0f05dc3a2e0876e5490d29ba11
Date: Wed, 31 Aug 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661917853
