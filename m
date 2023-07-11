Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD9B3D7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2FFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689048429;
	bh=63R+r5qnnG5Wlj1DZD8TauJ853Y6BsIjPcY1U2Y6nZ4=;
	h=To:Subject:From:Date:From;
	b=MkadA3WvCuQq7OWGrx5ggAZq+QMdkr3rc+rQdD4CF48ID1hpv7f4vRUSAoTs8kG+k
	 vwEh3Ws8RMoW9zbon3Au0IhcPdmWwKZ43ZBFOtUJnQ7rZwWe4F4q/tcbgHvd7OdPCM
	 xtVxxtsujw3naBnIHpT1Vnu0BU7n24XCQ3/7Ie58pJNJZHTQbQnv9LUhwSK7uto0Qw
	 4HDz+MEOOepEzP6SRXlJDFGfKPo4h6xNtnrcwVWfc1p74BzNXsCFGeSxCw1ezd7Mdd
	 7HFduvaaPlAjDNnduTFRjunPueSV/GZp86i4HxZhR/47KV1VDMs3a+2DwoOU7B7TNP
	 06HErDfL2YOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C19EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168904842879.7766.6368989329507032367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02f524aa8e2b9f439f024a4d636979ef3a7b8b2b4f1a56781b906cdd1e7e5d9
Date: Tue, 11 Jul 2023 04:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689048428
