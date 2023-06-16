Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67D16AA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00574C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686953349;
	bh=ondduNtIKNPDb+UboH3MEIpiITnEy1U4cIxthlyNvnI=;
	h=To:Subject:From:Date:From;
	b=nvvk319ohTU2uvB/9ESGLUA0KG9P4cvEgvvF4gHhsHV8eh4/WZZ7AA6DFV9NySnaz
	 nj90uvjvRB3FrNvfHnt4MnjmY7qntutCt8wWDVCO0W9EYpoGq/NpEZfjOXN0cE0oCh
	 s+5ZiKgv8HTHIlygOSrJarNKdGdyt5dfZUNhLwGGaCgVMgRGpMTERklc+kqXGD61AP
	 /smaz65eirnloDdsuRLbEed0dGS+TniH5bd/dzbp02xbyZwx+eOdwrut38cky7Y5Rs
	 0vFOPrSlArFVEjnKHY1ZfqtP9r/ebT/OaIl/bFCv3Ukrj+m629Y0u/wfABZ9e3k7BK
	 Zi1WDLLRR7pzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D560AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695334884.3676.16033216442457860975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ce510edd2412f40b1e15a8b271f8ba0570d54e8782662854381c544421e6b9
Date: Fri, 16 Jun 2023 22:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686953348
