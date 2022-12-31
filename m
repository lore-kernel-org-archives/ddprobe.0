Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28CB15A4
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93718C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672475487;
	bh=6/mXXFHcM53Ekdbf3WtYBHdklw194t3zR8C4aeZSkRc=;
	h=To:Subject:From:Date:From;
	b=VlrWMytNhJhJdPMXQtyuRCGCl4RxLTLgPkdzMs8OopqY5SSjLrMoUN2kkTUGlqwQR
	 0GrD3v8MTZZUQk376oH6EO+r/0fgVCsdZjErQVrUxPZK8+bqSy6z1ptVgMTKpZIcVs
	 Tq2xnNqCIf/92LvrUCCuJ1A8dzFdn8hsKjxcOL6r0FbWJhOnE7sM8jU7on299gKxW4
	 gBzL6NUA7oUrVH00Ajz75F+3rvA5dEJXbDNqGexubINkmO2cA+U1bioB+7o+zRWTKl
	 1Minef8FxVmp4z8wRrZyQL2u572w5Dfu0KLSlCnZJUIi4+bCMmlCUasUal+BA2ypjG
	 Y5iwFV054MYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 797E5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247548748.22305.1655758176514870144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5286665e5da9ced23dd33d2b3f51d72f4706843594f0ff0eb08ef7885832b63d
Date: Sat, 31 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672475487
