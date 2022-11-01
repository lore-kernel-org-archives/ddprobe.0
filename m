Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FFA364
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAA6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667291454;
	bh=QPlwKcio3pWDycI4pLVx79oa/dyBbFeIX4WGkHMhFJs=;
	h=To:Subject:From:Date:From;
	b=jt7j31lbR7kk8nZSPQtl7pyZx2USEcQHkLvUt4Z87/Nz5FmVM3xcFq2Efa/Z81FQU
	 MJuEFdx/4Ag+jgU1DfRrsSSqMnXH3bgIkVyvWktBjKzW3wP2g0x+8GXqT0If3jT2LG
	 nvmoF5Ddu1k2YtzSAcLzFlfuAZJduqTO89ARhyiV79lDfDTU8p7RHzYTGg54v5aqFO
	 GUVk3b/xMJsAza8j23EYeaLGF3qwZ3XNPCt0wuindCmOXcnGiPufYdQK3WmP4Xzr0r
	 kCbIrzxmN9/p2QCIAPMfmY6EfiT4lLDHyBosH7jfHR9Nu4DF9ixTHKlApirH9ubl8i
	 fN6WQgpwes2IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51033FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729145432.15020.11762601224505525273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b6075f54b0814ff9e6d7c4687c9d9d6cb0624576aaf7f8c5208822cf4cc74e
Date: Tue, 01 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667291454
