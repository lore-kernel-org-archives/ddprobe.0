Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EA85382
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qw+ZFceb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA08C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701058096;
	bh=5iepFeAUIGbzOBYcmjGSfpQde931p43vTZBxK0JxPQ8=;
	h=To:Subject:From:Date:From;
	b=qw+ZFceb3kZIgqJHBFkJv482Eg+ibmBzuTKrngH/2FXKP8/yRW21gG+oP2Y0HFojq
	 a1WCuIlLTmAa04XiTF4HhkMhpxqm15cMLwN8ig3uqy3E4oB+24CVQu5pJUPOyhHJo8
	 VK8mXHvetuZAXx2s0gjRXit1xNfD8z4kdeOxLJuVyfH85H+Cz/jwp4q+a9kpUH+tkK
	 ANTAKGrnFX3mEIfkRU33XP+UYklT5rx+LrXYB1ISlyOj/Lh5ZboCOytVl+JYb7GBjg
	 wbsJuy4eZ1WZaCYNtwh+jgYqj5tVcU80Ty6CuxIcN15jfjI1uADPpHvCVCgLjRFWa+
	 lbfv9MS8xabOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6045BC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170105809638.17470.8758360518504541152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c481c246ef8b1a2b28ca58e81c5ad3f4e187d622215805a35e7919e146d71e2
Date: Mon, 27 Nov 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701058096
