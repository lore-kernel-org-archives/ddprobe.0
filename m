Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4108A52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72741C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665969653;
	bh=tvxar7vTo0aao72qWByyUyPJsszw1T6JaxB8sXf5JCw=;
	h=To:Subject:From:Date:From;
	b=KVsn8dTbUES18Qpj3iacxh7pBrbnCzkTsTYx014pJ94cbj8/s5GJsI60mcztw+9Cr
	 C6QACZWZswkQ7Q0mcAg6n/0xh7CNdrb9mr5Pp5SQxDzPmsPGJXOoaWuPZYjvoM/zg9
	 YwnobTyfcpeuVj1XL1/H92m0oRlR2W0aLmTeDr1Ej4zTpwHOgKiXu+AImDaBxzW2/h
	 a6DzzB8BKI7q6PlWQZvCQ9k74hJWaYKNzCLFnuLJhI4UDBGwrTq1zKDTzN8a7uDOjP
	 LfR8gmJQU+DTRuJRhyxdupHGqvFF6oQDaBxWeeBV9eKr9+5CBsHTffJzHhvzBEi/rL
	 ll15rMMBuV1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B762C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596965335.7524.18274349535495974146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a11b0ddf0ba272e40e82a99ec100cd46d40e55b0b86a97c8ef0754fc7b846d1
Date: Mon, 17 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665969653
