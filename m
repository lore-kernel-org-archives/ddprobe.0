Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB74C60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK0S9KEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA1BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704331696;
	bh=2izWBnrDx5qe2xaWQxu2kqtIh33yssAR4PmgIUW/ig4=;
	h=To:Subject:From:Date:From;
	b=pK0S9KEf5DAcb+7CUigg2IJgZJWsGLILldd/TBTv31wgDTMP8MH6wLfhbZ60H75j7
	 T4PpzKFWuX7Db9xIeqk0I38jsSBrkZEm3JfSCGGSeTkM7+quGLgjrr7CxkAIaU+giA
	 2tevN12KjFfSEEIR0BZzpPUPYJfZ4Z1MgZr8gCalQWZlUaD9Sf+31/GCteh9iPTSqu
	 v/ByTWdUNYGes19/mR9PEaRDKzkPQl/hs7lLXjcWYXr+frd5iaTNvyTgL1Nxmm1xoT
	 l6ROVT6WiY8yi1eauT3/GqD8LuUmlm2ScUHG/xsckVtfwuXKfZmYQBa7wPTGsf0to5
	 UkPewHs2y/0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFFC3DA6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170433169652.30293.13754096151440059887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cd348e2027fea2a8b4276f35a5146c0c488c0c146944bb6aa2121f9719bc2e
Date: Thu, 04 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704331696
