Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34FA6FB4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DAAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671478287;
	bh=TRHYXoGImL8ouN3+mnyyZ1jBIG9LSYiCwwba8vGq4YQ=;
	h=To:Subject:From:Date:From;
	b=Q5KMeUMQoGXcc0sT9SRykqf7tn7vf58C2YABJnz7mqtq2z+/x6NA2w6dvnrf8nFKw
	 kR8JFQdFYDSNIgB6yseit/4saycNV6LhNH0E3vpyZrCUUM5VuSZlHPz5UXanDtg1bf
	 bzbz6RKQuDVnxKiSoKtFqpO/8jMxVxLlfgPDAvHUP1VZLHnvWH5+6EJ/u7JZJWKxhU
	 szTGHKEDjCjW3wVRDIQo9clBovoGiXBS4J8uI0FP2lV2iYDKhTjlhL5Q2IMWSDpfKW
	 /9uB/2Wb0VQ6dDCKZrIwZ6A8WuCExjelAnyvhNxXyMRtcgv63/PgVjJIeqUlu18XYM
	 v8pabP8nlIwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD3AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147828737.24144.4918236175241897669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22b570e9ba985b0a7251ffd81d3d1218d238c2e67b0ea47899e1fe64d9b3aea
Date: Mon, 19 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671478287
