Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7760B1BBBE5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781205394; cv=none; b=mo31KvCzoS/5SUCVw10rnO6iCCY+sgDVmJ7ykwe8gTl4igDyjKeR6Xds1W7IJ+9PXY7kpWuZzTOBD1gXu9GPNxldMWBBOGjnAtl/8z0xt3eN6PLJ+nEfNqbtDCAbZ2KkN/s2T4zNECnQf6tgVMjMQsG/ongUm6HOCVER/4SHIOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781205394; c=relaxed/simple;
	bh=QPrV9fFFaj5V/04yjzj+yZsMemEDdUOWiBK8c1+24ew=;
	h=To:Subject:From:Message-Id:Date; b=UWiV3c37caKewXkwZ8XP11V8ze5ZKU4FdVIcq9pXUfI7XXrPJOFZhvH8SpGdoy1OO7Ix2Gfkwn8/O53QTfbUvVfzNHsAMWfrn22EV3nHEZv25RD/p5qwFl8Z58d+V/+yS2xsKSAGf+ARV2c5oXTtqNJjTVL11G4PAMEwCcm6bJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1AtAAcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1AtAAcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23C48C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781205394;
	bh=QPrV9fFFaj5V/04yjzj+yZsMemEDdUOWiBK8c1+24ew=;
	h=To:Subject:From:Date:From;
	b=O1AtAAcL95wbimWghW4LLyRDtgEJxSnEXcwAnMPMy9YS6ndoZYIpTZil5YpRfKi0c
	 kgvhTh6Wzf+LFwWO7/+bg3Kyq4uama7j9TT5yXJs1dXDAEZIw823vQdRk+YbMlx1Y7
	 oChszG565jzKJ1l6SOc7Ai68A84/gkNLTDPmMhzBM1+Ni0bqD4f2Qp/YALZG4wbX6e
	 a1SsmfZkjcPBnYi8RMBWZxKeTPdooZOOWJ/2DImpNsn57iEIyCMTgqY+wT5KS1BVTq
	 hdlsQskjcPoTvVJXfFPNO8WtBMmDG/MrXiU7SAqmWkPRr6hl0MJDQ0lFZPzphAfSjw
	 HXGZwIJ9baaHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D631BCD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120539386.13207.15761936082650419314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f16102424091b266ac5d06b61ce9e11647340410b80e2c7017be26b34b2dba
Date: Thu, 11 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781205393
