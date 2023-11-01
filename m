Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A401170A
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHXq5E1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8F1C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698840496;
	bh=+zB2eLzH2hGLmyZas25BpzjIEqDrtvj+Bh4BPImMHRs=;
	h=To:Subject:From:Date:From;
	b=aHXq5E1FPADpMBS11WfnIrjFx3tftaPyvx9NigU5bpZZVoKlaoMu6163AdZnevL/t
	 bWSq82pGwnHd76Ps/ygO5Yx0G0TFVjPLPQ8ziC8L069X5wPq45viYLQuPDwhXd/3v/
	 DvqYUORi5ySAATImb77htVRPkt11rquKB+5d9pb+ehgQakvMhpkNi+InT7k1OiAp8H
	 dZUbgFmdj9WPj/ZCRmBwI8AbPT8sku6kcd2jjULTF7bHcupMIiKRHN71zayyazCP/c
	 fVMBRxQfIbl6vRej+rk/YzsBzhnYhrN8moET61XhKnIyEdmZDwgNRAaaZKCwxHtKu9
	 qsDaxcK0TwjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D527C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169884049637.15776.10592280931112294458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce5ae4892aa8bfe5443d7dc0f23d4b52edb3db1efec67517685414963859f50
Date: Wed, 01 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698840496
