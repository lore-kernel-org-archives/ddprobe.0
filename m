Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547A71117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E2DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687008008;
	bh=TOAI0vnSnxxGiLUcTZo1RyqhBFZsYrGQWRAddU7ADhA=;
	h=To:Subject:From:Date:From;
	b=KUo0eH90o6wQOuZ+82Kwl8kYjdHABMpuu3e5m9dUvnbXtT1OChpTg1j6rxmDgzkss
	 0uc9PHrma5plxPnf985wNKuK+a8tOzrdbzCX0W66VonnbOUQ6u8YuaMr64ci0Kwxi+
	 bTZe9V7dN9mqyqRqGbtHiWQ8JTNUuzy8Ew8FnEiPt+ITlVq/wWiD1GQUyMD//8OabX
	 5oVrplSJC+v+nQSA/KESf9Ntfdawg3Y5s12TNe0PxADTbya2ASCTFC3zGqrUOI+Ovb
	 95h1ZOkr4DD8yeMjSa609St51pbzPG15fs4ciR2CIxLByT6JDHkKySEJ5u9w8PdTJg
	 V204nJ2Mt9lvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7099EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700800867.28481.849022977541536373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f3591aeb1f4cc8d080ede8c08111c2473c44553b27eeaaf2994e4f15160f51
Date: Sat, 17 Jun 2023 13:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687008008
