Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D4F6FBC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0sa77BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B3ABC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704776896;
	bh=wtdrLC1PrEp+PYWoC1kGjJTPlyPtgaUs2Yh721j2NaM=;
	h=To:Subject:From:Date:From;
	b=g0sa77BXfG8ryUmbRU+27r02HfonihD3esOGV8/bHb9sxSNWlVGuP5IHs5aRPtRLB
	 R39e82m7HL8pJP+4RGr5iaYX+nXA0SC2Qt7DudOT5jGcpBIzesBxcZAMtTABnN1kpH
	 HBkQ8itMIhgfTLHZRqLxIztbM+KogiLehgTpO2KX3Wjutjq4cEMaJRHLRwvnuJRMrf
	 D9xskOmL/FHRr5hKS1AjqHCdNy8eL0jqFOK88Gb9/mVmqRk7qXy6hHSKI3o8WwAPR7
	 Lc+odiFbgbrNGKNFrnh74GcY1RUHLXBfpnk26LnU+ahxSbK4vAUb93yOjWIXJGRNYw
	 yu2M/0fRj6FWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAC8C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170477689644.21677.8832286115781042499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05111138c68d546b0e635f4cc8c80a9205d0391019fc11f67e2cc8e42d305bbe
Date: Tue, 09 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704776896
