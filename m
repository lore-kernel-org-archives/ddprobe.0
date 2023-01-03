Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84018F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D1AC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672771287;
	bh=lWUIRtXOjl10D+EVPoAc+OUmW6vK/tJ3XRz6QiCfHQw=;
	h=To:Subject:From:Date:From;
	b=CaD740cNAJXxv9x+O0QP7JsiReOHXbetfpnR+f96N4/UqpdGI+TrGb7jgMpiyR5cP
	 flNFYt43Q9Hhf/wLUrZ1m/5tqpH1no01UvfTA7UfoEx42OD7sIvMapAgB0hcJaa9jE
	 0klCGIB9vpRy8Dm5J8SVn4JrpvIpFq7rmcMynsD3dpMcKBIykeHfyy3VH/ihjj88Xg
	 xK9bCjyUIzYosOdXvonmsSyV9+SGpUHdQhmgldUXzmkNYvu6J1vrZ53mHaqgjkOe8Y
	 4y08V4B56XW3q+ZvkcHD7MALrLK+XFOQ4UWp4xN8bjH59hfV18YgH6wnxe+xWFDMXT
	 q0Lom7eiQBJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684EAC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277128741.7544.11262429746179546806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887f68e113ed38603a23fb28e376f235eca02e559afdeae78b321ad6131ab1b8
Date: Tue, 03 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672771287
