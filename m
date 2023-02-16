Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06333E6
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E603EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676579585;
	bh=oKyB88BOeaPlMYTOMyWdABJUyPGKqZYXjCtsrPBmeWw=;
	h=To:Subject:From:Date:From;
	b=K8lAFMqTI7kxIHesEIjRZz3eoGfn8JVQOCz9e4iZiVg0tigjJiMUoEbZk64/IkRHa
	 FqqrykkmEfO1nfVr7xfPONXNg9u6s7cRU+NAR6uu4Ryfe89y8v/DZCAOiP5/o0RW+4
	 Ee9lAWWdgXyvda90W9OZoV3puTUTaqOc4ZbWwm8i5sgl1dB87hv1hThWSyXBiVKFkh
	 gMlDYrCQ12ncB11ASZp81aLIejDHBAdWC4MNpA2NkCrPzqr8j1hYrWUzbzpOk0PErP
	 qbB95L3QC94g26sMMTBuphAqqGxI76EFf9815a+ZWYuYU00NrusLvfQSQXfARG5djp
	 NjqQvNKT9LTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E52C636D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167657958578.17415.6432662438579303119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9304f64b382a09f3678c9c55cf4a580caf14ea3000e204c36f09d8e471a570
Date: Thu, 16 Feb 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676579585
