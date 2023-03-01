Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696587E8
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C84C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677630366;
	bh=Ky65NSwXxm6JCvTsEzE7krrbIYshTyQRN7KuWEFzprA=;
	h=To:Subject:From:Date:From;
	b=I35t3/lv70HDV4giTV9BVIUeieZcy2ROKLb3aIj5nVz/RPiAl4/pIIXC0nihUXL8/
	 ycr2J+mf2FDvdxb/GWQUsLY/YkRpKUnwwjxuOBxQgiJGbKRhS7QYzki66HdxgbTw0U
	 CCyMh7WmqTkUJjNGFhjITs4OmRTwrCDDdZU75G2gaDpPWhYro4R6mz4sQA7rjBFysD
	 NujNUMGDwZun404Uh/GAuC5yHklIHXuvvS2InUh8MOPIECRJfpgmQJeov2kiRTOLuR
	 DixMTDG9T5YcRNeiC/Mk/k6HZ0Qbrb9lnFG9TXP2vAkhEEqqKMBjM5ppaM6FlN1296
	 M7Ey+W5TS6Gcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E779CC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763036593.27723.13204013213010588746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c64af9a0378cc4215954fd3bc097887cbed91391876461ee7a2294b754408c3
Date: Wed, 01 Mar 2023 00:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677630365
