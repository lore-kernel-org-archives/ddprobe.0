Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EEB2C689
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rv83QCx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9F4C433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705319296;
	bh=M/NjvjrlfCb/YujVgeBlXjQVUah8QM9h4E6ayB7TtMc=;
	h=To:Subject:From:Date:From;
	b=rv83QCx1+RvDcJoQ5YMm5nzTAyBrMUvDJkozGq5lQjRmvPAXxcpqopCbbCsYzoO3f
	 /l9nsrCXQyzoVP9q5MnOXOM5p95zpzT3G5oLsEYWRDBNDxZ/KCnnK0a+VlVaIDGtwD
	 IZSRz2Kzksa5bfPzSRwD8nfq132eNboO/rNtf/+/5a0QVb5lxGnT9Eo3MWWW2mJ0Zf
	 3D31PSth0b6Vd5Iaq/gsotkMc3NmgfWowPDZKzlgVBdcWc24bFAQv6TJ+KbeM7xtbh
	 flgFIkzq198enOR6TEdzgJQ5DXmdFAs+C1vDfu9fDBc1kETxNhZolrnVymXtmIngIt
	 xy4S+B+Mc97Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF37C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170531929637.29812.4476926995234489097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ceb8b3b2828c76f85b0e09a550862145fd78a332dd57b98e8ab8a4bd6a7b59
Date: Mon, 15 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705319296
