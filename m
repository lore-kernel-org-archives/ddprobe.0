Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459772F22
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 23:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC75C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676502545;
	bh=WXTRHGSGEgJwtODIyBWupFjM6I/nEx2hRPC7yFX2m5A=;
	h=To:Subject:From:Date:From;
	b=vIPESu3VQaUQoCCQJzExXo4zhnkJ0jzVsHrHQgguYAhBVfaYdoXCBhnhR/d5WgEAk
	 DXiTpAQdXZNryrgLqMjiNdcQZAhMQgebV8Jx3RoNadKAPHWJJ2QW49rJyvgSOFbXBj
	 FJPHL+txz+dr/phxnIbBFPqK76pIecegeCwXxU9Jj4nRessLklaPVUtPxPYj8oSE/f
	 W3MkHSOVow3dw/I9q8Xm7ayFoC9RmYWbY9XBrUpYzgKZvNWhZ4iw6TiBXVUS1IvWE2
	 hzqke+d6Qpuq17tnxn5wnHR/1R7bTC6fE4sf/+Nar8Zezkb7ihIkeUtugVaIq1KxQ6
	 5lf7GYWRN2qsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05C8C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 23:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167650254576.12482.11418933960701413559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06f21c77f73947342b7cd8a7dddea43f6e0be7aa388d16872f2e5f46d1f04e9
Date: Wed, 15 Feb 2023 23:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676502545
