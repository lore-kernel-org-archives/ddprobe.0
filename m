Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EDD17D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7038FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666327853;
	bh=X318iy2X8O5Z5Gzt0IGfdj1inVmyyLK7X30BHB/I41o=;
	h=To:Subject:From:Date:From;
	b=cdiIL5PpCqQ5TMHNDnVXDfJvum/tk4wGEZ8JYXhsP8Sood2yziLEFYv3LMRZYzt0J
	 +VeG1c9+hHjD5Tul5PMhJCLC+12Gs1y1+xNItcL2Ca6qhjSfZ6JEFCFW5YwkS5exoE
	 Kxd4GlTNjibEmSN1BV0XFDwEXZIOK3nLS4FlSt1iGAtfp5NvjLGqYoSJbo2EtBgNJP
	 kUVKTnEstNZbiFG8CEjHhoyWpVO5qM5sNTffcwKrTebPn/r8yhPXeUio8Q5U+ceB4U
	 k0e4MP7UGN6FpK+uuyxB5CfeCFKdh/nPYpekqMO6qptZVZ+N2u9sGv2uycUqeC0eLE
	 o2uJdTonqb8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545A9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632785331.5496.3208609448587379260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cf7ee407aba51f4beaadf9aee7cb3bb9fa5407d0e84526379fa02e0ce0e905
Date: Fri, 21 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666327853
