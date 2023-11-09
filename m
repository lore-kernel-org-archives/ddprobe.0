Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B71D506
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7NTE5w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99589C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699511296;
	bh=IEe9z2Cc53XdlpYetbL4ZlOZDXK1/PmGFdb6JbBfg8A=;
	h=To:Subject:From:Date:From;
	b=t7NTE5w0jwpVBPhMZV9oQcP+G5loUQ9ikO6kUS8Xala2tUZCaquQTAjsaaoOGX6kl
	 e5EiQsMzXRl9FWkRDlYTk6kT0g4Uci8rKCv2+lq1Yk11hmnJUVjG2Y3RvTxASA0n3k
	 ejQq2YOk/CCp/b3iBMFH/PXi97MXwEjDB1p9qEjWu40xJJQj5/dznULrJ2HuDywUVu
	 6aeiY2NH+KBiMmov4VLoA2LWMhE4QzBVl7VjQ4cy9xY5nuIc5Agz5LzRJ2jOWb6eeA
	 bz2Lyx4Irqp8qySgrB+nuvkGeYDxL65h/GL/lpxrHNsoDl3tLE/dqxYEIiYEMfsfHM
	 y2R9a7/3ElY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 761B4C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169951129647.13618.9935099553637678367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aed39ccbb09b2d288f107c625ece4cdf985a1ccaaac7368171243a2d5cd1869
Date: Thu, 09 Nov 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699511296
