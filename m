Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E936A46
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC41BC4339B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680830285;
	bh=SofHhWhC/SQrRpTzbabA1SIYoFewg6xj7u0DXh6VrbQ=;
	h=To:Subject:From:Date:From;
	b=KYHw3wWIpOoHDXrVVNE1DDofnCX48eczwGQlMDNiICCxFYlnCTUIqkd+iR1ev+nX5
	 KMpa/EQzQRzjDm7iMAF0clfgwepEvf0VHSjFgrFosmauYh6pEjCoUubKjFwilJXRZ2
	 E7DU3z1EXbnRHz0lo0e0mXL4wHItp0B991bwbDXZShnfaIgrx1asz2wFZ5gZBDWwV6
	 GAY5A5ImSM5GnLwivYYAMFCgcdz0BEbj/sxFAevO54qyLK28iBuTf3HL8eblvEAqIL
	 emWDQW7W0lSaLgM2T87u6bZZpQbetyxMGuUb5YF2H69yTKicv+/l5wJsrzQVEYKQiJ
	 wHzX2poNUCmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE8FC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083028577.8666.9766486020096908382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36215db1d18d4a3f24d5935afc798c08c348755281d3f446d1fabcda9b4996f7
Date: Fri, 07 Apr 2023 01:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680830285
