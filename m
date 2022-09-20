Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35AF1C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DA6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663671653;
	bh=yySjHvBAJ9fVW8n5/ry/IN0tUi79W4b7v9Wki/0D/XQ=;
	h=To:Subject:From:Date:From;
	b=hp9hrzOJvenegf6/HtLjBoGTTQUokcLNFxikwCDA5YmHqgkaV2F9g8s2IVQ2nT3ne
	 n/LpUxJZyBbcjh+5bx32kU2EMecxnPmTDq/fV00MRzzrppRbQ5usUXBapKWlWiAOVg
	 qoj0cOAe5rT6+u7hnzxNZBVBC0aWTp9qVykoAQxVmTCwIjOvGAR7rnNo6xdYr0FAAC
	 e//uddH0gCwVkkYt+TeIxBsBS0xmZuwSf9Zg8V/DOUA10EZZ84j1qzqQSFHzTHMFz5
	 Rwzxu6KLmdLql/RZ4wJ+qnIzq+o1WVDh6EXz/0zCQnvkYfUK4wRF7Rx6xN6IeTDC4T
	 R8oWyIur/RnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6B7C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367165336.6025.3422062790521059715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5cb3efc1f46875c8c1ffa13bea8bb3b16dd3309e5dd33779136f7c0a63c653
Date: Tue, 20 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663671653
