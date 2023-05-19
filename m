Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB71119C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2DDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684526286;
	bh=C/oPfvG66LfTGz+iIK9q8lC+z+XesnUIfuC4dxURdho=;
	h=To:Subject:From:Date:From;
	b=tBZabBSL9PnF8UeaoVl7N24+HxSTk+SvhyR1NPMDqFnKCfAkQjHlqvHjySziXXA8H
	 RdmOzN1hS+3EX6jO9wtn+8VoU54Od+64FfoT2GcL8cfvl3R5N8xvi3R9TI4JRkXHVf
	 6BfM5ULnQdMemEb2fqhb/5uL8Nx8wDLyuRgOGUDnRvHicqU6TmfrPmK/ERHqE/nDqr
	 2uVxa9a7fJnKBnhNESE8VBAFNtECzfzpH9hpdFJ6KmTsvJjzI8crajPp2fgTAGSXwC
	 inDh5/wB4U4XW3kzbGt79ADlP0twu75eJJv7qnOpkvadGhvkxVcmSAP6iT2CaN1/9L
	 MPS1u2CQmPMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B9AC7EE26
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452628574.23904.8320763736314199982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8561e26b18c56adcf5d5424157d08b3e8ba289218dd8159100d3629f2193022e
Date: Fri, 19 May 2023 19:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684526285
