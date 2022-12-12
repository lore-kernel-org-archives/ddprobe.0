Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA1B53B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7CDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670875287;
	bh=LFGfR7JRrfh2aUKFMBuCSUKz3Rn7dk+S55RP4h1M9I8=;
	h=To:Subject:From:Date:From;
	b=ltRP1ufAKsPGbGSGockFDXZKh8y1/nCLF2bLGkZiQOckIUlCRaKl1mfGe1h8ioOkT
	 XV9gU45A40Z2C+MIvZMo9AreZ3aOndQnidnJadFcy24c1lVxInPR682FYXqV+GRZtN
	 bTGbEcS/Vb4C4jfrSL/jD8oOhRv6S5RPr5i8L+slcsqiQjj9voVYVLhD9nHNXFGYqc
	 HiR1s7mBD7HL6DXnBBFPUzDc6YJxlxNrZFFXmyIQMbmAgdbcPxU2KECJ6wz6Qhjdca
	 4H1NlSJiIjxa3HohUzGsrqBOq0dDMY58v+OONdp+bcttvEOkRCMdnKn9MPgJWMggG1
	 4xNv4G+IiAyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86F42C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087528753.5014.4956220543635052901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506ed4bbe1fbc1b6bd656340d2bfae18ce91164c0a4c6d2c6759fc4a2f955296
Date: Mon, 12 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670875287
