Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F9F320A
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB16CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679563745;
	bh=kcxv4qLJ24nrpac/Yx/kc0RRY1HSwBWO+gwKcyBhDOM=;
	h=To:Subject:From:Date:From;
	b=aOqn+mu2VIiqWq1t53GMieIsgyNmSeQxBsH3qbehOq/7RKcD4LUWwNhcLXbOaETZn
	 qHMdwCsD06wATrQ4mEHqN9/YVaYfyFhPlwpnGCr11KbhQp4+wfUzoeXOMluMBUczTS
	 YXNQv1j36YczoWtiapLiu3ZwneCi+I6Ws/BUw3FtvFY1/HpSYmvdjijxVolmdkkwOx
	 UvNDR5JW5wYpJptdbjFCFmqYnXqdhdubRWkzLtJZrMoFis1Xdf6mfH5t2ezDAvex3O
	 dL05nGnBfeEMqA0tMOfaO+iEliy5cXxFFydKVGNmTZQCwPzj9cZgI+TJ7kcdLcmh3M
	 PoskUXqRomNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEB2C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167956374576.27222.9168452895826488854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dda0c611e26bc17779b1be2a0fdabfaf53c4b65b6eb6cf3cfd869c4ceae9bdf
Date: Thu, 23 Mar 2023 09:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679563745
