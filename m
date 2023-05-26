Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C2742EE
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA79FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685115906;
	bh=ppEVCDVDX3NNnRPL7FaV8jtyIRBLhZ84PmrvX1Ewcl0=;
	h=To:Subject:From:Date:From;
	b=iqkhGcJNMgm4BkJIRYwufMvCmuqQjVYdx5s+bwQeYuoZdfX25QhxTfdQAJs5l/BMx
	 ttkhU+11hLBPQ2r5Y5TKLA97UJSy7USdlgNCtRudTFjj4gV15tKlrcYuy4jhoObyqx
	 Tm0GDy66tkeQvqVHWeWK88aQZWgvVzlh92HeUHuBO5SqEu6TpZf0gCT0s68zZKpTpa
	 Ghbi8MP+gahJxsOVOT1k87uJhUeWH8bOLsbQdQeSAennbGPYEJXSqvg/2k8tSj4spr
	 UZxASU16Pe6sozjrj0bhQINWGhQRXq+ITtYeLU5mFTnX4v0WWrqPUnofDapxqdUpSx
	 vqp0wfVwKY4vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EB5C7EE23
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168511590584.7707.6939833775546926578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827dfcf7a8e843c1c8dc5f4ab41572b1134c17e360103ef5c5eb356d86423fd4
Date: Fri, 26 May 2023 15:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685115905
