Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7607C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690AAC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664736653;
	bh=PxzWQSgij1Ysp09tLZQFY7Z9qF+HSfS0SNuT5d02l4w=;
	h=To:Subject:From:Date:From;
	b=H07HzKJ0nRBMnaiMQzk/qVVv5afTxuWATgKsVWjENn45TLNXpTihPjsVJG2LMK0M7
	 391jU+fVKbCUiLLUMUQ0uB3raZPtyad+edKxb3iEugyc0dAObhDn0MwHPrAz6CmIa/
	 57evUKNTm6lRvRbktKZqYDniFSD/QP7yLTIOKlpcqFg3SuHQoFz2J7hrrbvVac4zm7
	 NnMtMHkmHgl2z9ouX3xN8S3mghbDlFq68RodWRwoRcJrph/IYCdUXYLOp0cVrhGnAm
	 vCiKDPDOeO7uEs3zTUcvyHOjZKAavRLMgu7iXXbClpkVAJXAhh/yivi6ayrT4yWlzb
	 vIUSQWs5Pz8pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50846C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473665332.1968.4759321071795236805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0e8fac97dc417c1bae658bef4cb5a3998ad53519fbbd66997fe0bc4b58d8e1
Date: Sun, 02 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664736653
