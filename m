Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286893229
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwwXjETu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8926DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698004096;
	bh=dUDLsQPePNphyi6T+LlJsn8y234niTN0ITC0Kq+Rq6s=;
	h=To:Subject:From:Date:From;
	b=gwwXjETuC7aSQo/hoKIDPGdfHHaUCq0IHtsiM8C4+i8UFDFeI06CuLHL+pO14pEny
	 TMLE+vR0o652JBUuKLxDqc33wLdZBhy1DP20Vs3o3PoW0VAiHSn/p+zjusX3c1wUA2
	 Pn/2eW98feA0BbgvDDuWQKRAhV2AGSlErKNcGG2p5Z3VSbkelk/wIRry80UzwAWHmb
	 NnIzEpfwNtwIvy17HFSoYiJF5dxIqJJ1mHJVnJq0B5KhgSub2r4wl30WxSkWgFN55G
	 5evtHux5y6LaGmZ14xcXKDBO+nFiFeQm0JUfTtfjlLLD3JTrSGxQqzGqj9mWH5OoAv
	 HBN/t8lB2HSxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6864DCDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169800409638.26866.685059234790430027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8d03a0439310a0ae4d60b9c3414b1a3c67d96235abe72359014c6023d67156
Date: Sun, 22 Oct 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698004096
