Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C253A7B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7473FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667367054;
	bh=TAY/ZM6zYLtMymvi3cB7fB9avYBvdq/OPDmemRZZ3Sg=;
	h=To:Subject:From:Date:From;
	b=C4QcRyvjBsw1iYbKKCOlDEL1NX7S1qS3OlczuzTNkSMl6bYn+hQFy0KuZxubn30Uh
	 F1Mtl4D4U5/kL2lB+xcut5tCa4d6wzM+BRhYstJP6LFxvuXFtLmGGOtONhe2bF9Ddp
	 seexb9x/mPTLDMXD7HbMHk6jv+5SEkPxiQUxZ7EfsQmjiaIMEaOYFJEse5Ul7qSNip
	 PF+Lhq3oeKW+fSOOw55KHZOuC23B/Ng3a4jSaP1ItKekdHHg7C+stNk/X85q6xMSff
	 MH3Iq4cUEaldt+DUxM6h+Cw5+Ckarg3P7ypYU1N+DJwwcwBwfgduzXo4OBttQEteif
	 S3nL+61QsN5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F77C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736705434.2418.8838390714316413495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515682c40d1d19c5e21aad022552f72072f2b90c933aa3452c7e209d7813c545
Date: Wed, 02 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667367054
