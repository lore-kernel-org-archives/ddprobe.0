Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92B51C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767ACC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666944054;
	bh=d6QUVhie7u5ZRTIXHPEl9hVkljLStmHxizBZ3LxG0jM=;
	h=To:Subject:From:Date:From;
	b=pwEHm5Vy52QjnOIME/0UOmyLvzEuhtjzLME6YyLnTJfR+eKWSw5bqQxmV2iHyMXoP
	 H7X0FhQapqWkLLrV4m59cWr71yehg+0ZveLBIr8IK6QZ/2yHwJj3Q56UUV+WFDlyZb
	 CR83GseqcOs34yEB3UUg3gkTxpp29u8KFCs8xQ9mI2WGiVr7kRO0WxUDQ/BfEUXb6L
	 1Mqfte62DX3BrHMK3IVrqdPDxJQ1MXCxIlxGFA9F7f5a67JAcUlAA981wEdNZc60Wq
	 8dGC0CcMHtQGYf5V4OvcOCpR4PwXlZLosbcNSfjSWdw2533UBRSZJwnU97jBIcacXx
	 5NPI6wb9n1F9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7B4ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694405435.19732.15036126199805927179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73992fa7bce68d67d3d481f27004f7d18c4029177657d0fddfd407ea6b9140d3
Date: Fri, 28 Oct 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666944054
