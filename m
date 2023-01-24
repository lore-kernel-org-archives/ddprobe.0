Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C35A31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF563C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674528785;
	bh=HWw2qTPe8ES0ph8H7WWmuiJzE89y+66DIp5VZbG/Zdc=;
	h=To:Subject:From:Date:From;
	b=gHRcoaJ/zcxnOGWG6jbx1SODW1XVNbuF/X2xonRJ9Vbx9djXC7y7MhTcl2oBCKnS7
	 dD7z+9i8G0YhFM6r0T3kJV5xXc/3csdN9GeFOrAnhNQ8Zo6qIBsXMD6PQIgYpsqeah
	 mz7/f5IK2itPthbLQZD2Qjch9IL4b5pjJBN8rXDkq2UZUgPMAKKY1oAV0oDNFR2E1M
	 GxdKR5xfq5966hFGRMvqSrvYBPhpquoUylVednfcBWloKUnScQHLliiG1O9AeOfYFU
	 Y60VQaqITHv1TZJXkboVSyQaQFYRxNoLSodw8UBtPTEpOjhkK6EAq1PBz8CDmczdrP
	 +NyMpHiwDR1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55F3C05027
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167452878573.12609.2375320670415372583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1a3effabd493e2cdf3432dafa95da29d7b6c8aed0b0423fcbe0e6845160ae9
Date: Tue, 24 Jan 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674528785
