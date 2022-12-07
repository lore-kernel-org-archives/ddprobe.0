Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01FD20FA
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0BDC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670421654;
	bh=3bUba8zRAEGbjCtL7TKbKWrUOuMwD5rryEtLSgSh8ZQ=;
	h=To:Subject:From:Date:From;
	b=fLgL2bZeHC6idUAyZCXPAuoMA90Fhkg+4M4Q+SSI+W1rgMiFsEnlWL0epVDUogMVZ
	 voFlZqpLzvxommtHPAO59l9XvNiPn+CnuD3cDwLbT3f1WqthZGWVt5+IriIZZIwx7z
	 0VrfVVD3gfmtkS5RLbT3H9erftSP+yu6md6lV4DsSQ6xQYlOcjwcjw8YNeZLT1bZNT
	 vhU2DiF71CrJxnTR6YhSELtJCAnWtdZvQfsCmU4nG2uDjWoZBsk8CPBx2gy50X3vFy
	 BLPB7PDerQUdu9T7ffS4PYKuX4uf8q3tUZCfnSPR8qadvK6l6fzyms61fYl25EBD1y
	 N7hL3CC2GVusg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579EAC63706
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042165435.32353.15253469711834872447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ecbe61ca15df3b16f5fa2a61b8ce1be6c4ebe6b2e2079e275d56ee69ce5219
Date: Wed, 07 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670421654
