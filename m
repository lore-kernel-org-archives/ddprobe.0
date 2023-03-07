Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B61A36E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 04:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1928C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 04:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678162745;
	bh=UDy7bgxcoA9DPI/Q+g1GrTCI9DHLD2z0wguRqfzgeKc=;
	h=To:Subject:From:Date:From;
	b=faAXmxgqTMD0j5Ncy5zwCP3qPM4Qu2nCoyAtg1aGc8cK5yizsHZLAqcPWwID4d1Fo
	 nGKq6VsMT3TXRydPxV7HEv7MJtTZwhBvbPTTsHHbZerreT8T3dV4slaEjcW6GJChSH
	 0EBm6l3FToA6WmZfhSE8JpQcZCCpVkkfyfhcNz6noVwHppDp5pKeQs9QqqbFIh5ZxF
	 AuP6ZvKYnnsDSxT+A0WbqRotf7V0qDZbZdRLaIytg18cUG9M8hMypsNYiQD6wE3ghd
	 x/70omVYqcYHgolRysP0zpRqtnfsvxUfdQDH/EO+eaOfNt0LtpUEj1c2nXZCkpdAaH
	 KCsKCkUcIgaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99B5C678DB
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 04:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167816274575.7132.13641374707670290157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef53a8539ecdb07b1db5c182e4ee71110fa13eae9a1681e3af665df9b41ff2d1
Date: Tue, 07 Mar 2023 04:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678162745
