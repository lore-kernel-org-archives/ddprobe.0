Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469A2197
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A77C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677257705;
	bh=51QUE95fsyTKp/ODNX0f/gS6qxmK57m2RMqvD4uyOyE=;
	h=To:Subject:From:Date:From;
	b=InfDr8/VAuVp3vx5wCLjqdXmjgNtQU6NxLc1Tupo1Xsv/jvoDxaQWgeTVNCArChpA
	 vAXm5wWbByMrLWFyh1+jsByjdXWKlKTTsNYmbCChrX59yxfbZ5gIZGVDIbhvecVr3u
	 PXVNfyqe0RtSK7tc6YLcaBHVo4vf79rrpcQVFB9163L14q/EMWdUN09Y4pHNVa1v5r
	 nRfFMP+1I+Y4f1QgaDaYWcAQ0GUoilNBYAfgKhGiaain3DwmNxcxD7ULBsFCs+j+We
	 OSN1maN3IDpiXGvGWu5MDgRvdDytizlNB15svYYrjJDfIzwL/32pML43B3gj1c2b7S
	 aN2g6gBJy0TJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4015C7EE2D
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 16:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167725770578.26344.3852993063623201369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c5856b92ae62d39f79d5d9e17af3b13f1c509b9b6beded0ee6207a8b2e922e
Date: Fri, 24 Feb 2023 16:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677257705
