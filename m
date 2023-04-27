Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316E1FCC
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 07:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0852C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682581865;
	bh=tto2RQ4PtYDKNuocPudH1+4oK4ZvYdFbShf8CD4Px9E=;
	h=To:Subject:From:Date:From;
	b=tsZUzFNuHhhD96QmCPFKugLiTprj6dzw6nh6DfbKjIAjmB77Pi4iTO7foBZQxCzUz
	 8vPItNthz7L/bhm9OV8JBGzq3PY/h7p7BCws45k8NQAuzyNM7F+nu8y4X95am3t9ds
	 ufNlbxOsKpQ8BBbgf3CZDFqWz/mi/tLhRKrdFWGF3emlwKVL2twUDZIj7znemeg4a9
	 gbBW7rIwqUczk8zdKshgKImdvOQxThmzpWvrBXa3xSvAiyqPdOl+v1P3+KqVnZL3WL
	 hFP13HuNxStdnIPHclJJmupYk5pGtMhzafFBUBB3aBXXrfRo6CWxqKYlbmkKXI926c
	 W1lA0fXRjsLfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B05C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 07:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168258186579.17495.13273153429007344774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8837b3029e851593ce6342262c544e61a7d6b42502bb5b6c6f09b48301559111
Date: Thu, 27 Apr 2023 07:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682581865
