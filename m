Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68D51C04
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A51C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674014487;
	bh=OZ5YhMJNv1IJ+UBjLEjLeslEHpAFd+7Eii4pFNAzoUE=;
	h=To:Subject:From:Date:From;
	b=h8daZqpTpr18l8NF7L4sCsLhs/43m9XNgZG64e+DGGBTPLf7mJIFxeXsyQCgAXBI9
	 FTz/lYHxcqO/wbSsXdbhWa0gY5UKC/331F1PrH55ileMWDF5slOc1h9RFbDGCtLcmY
	 nKuXcVTQCSKLJAkxeT6W0KK5KiEcollZTEOPE9pKn8MybHL7+QsAxQJ59WJgyyyYb2
	 XCL3hYrNQ2UkXx1csDAnH9862fuZeEjOgislLnqAAR6pEYbDWA5R59lA9Go3/9iOwu
	 ccY0cwlmSqxka1EEpsjK1Ld4cW4EMMZXAZOGTj38oasugc72mOxYTViz39x6I+EeiX
	 klkNnOOTjPC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63696C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401448739.29033.17568492769930760615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5373de6f402c13dbb1faf06274c0da526003c5fe8d8df2a45aced3ae17a38d1
Date: Wed, 18 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674014487
