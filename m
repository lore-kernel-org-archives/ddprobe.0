Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EBCA2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B111C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673829687;
	bh=07eiZhH+jpf3LVqTpDgL3FHLLeWKIkCdkybB1Xfl3gQ=;
	h=To:Subject:From:Date:From;
	b=krd5gCj8+ZboJSxgO87z44TKI4vnq90zDjhvWeh/2HdkG77pLqDS+xSuMRw62Vz7o
	 VaUd35SHwS5r8rMNtnV/1ODDgdwxcNATif+Ky+04y3Odfawyub1alorv1LHZ3yOXQj
	 LRjMA+OIpR3I9c93kME22FXXozviN0uUwucpR5b8r5ZEOoGhbq6epsupqENZtQYinC
	 ApkcWf2MKbsVSeCzQapVhsZHBWr8bkpYVeA+tXlMC0HviNoPgN6vRPOzDFypSBpW6n
	 vKR+rWcUFm2tk1sdUaFYNPWGB+U7p2/lUfp5weXi7KEQugFdnpFaNpAbpd/bfbyH4M
	 OxdY2cxI6kegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B314C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382968749.21387.3481550053880679747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b47e6ca15f8b750de59e8a329b82d8ec01fd605cff0dc8f23bbc2ba293cd6ce
Date: Mon, 16 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673829687
