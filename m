Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE731852
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED17DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688755029;
	bh=vfyXnNwcwWociXKyON8mfoOzW9p6jjyxgHXr5V0I3jc=;
	h=To:Subject:From:Date:From;
	b=eR1ecsvErsw0GLsf17dzlWO7nQX6sjPEvEZY2vJsz8z6DhbNXqQbZHM/xW6pi7hE7
	 7s7THmQ56fk0WnUtd1n52Hps/KDNjanXNKKdRD5YCEGMly1qd2x7C6CdjaIuw07VVG
	 vSQIRNGZqlPVls7fuJ9L4lOtPniFn2Q7pSL3dBoYDD5KNEEdHP+oFMCdriYhXVQxXP
	 /BUv7pWEOW2nkxSWkysfOlDse32DMrFMrez4BflMmCMGdoDpCcnER6XcbV2oE+kYfM
	 U95kyRQM+HjHfR6SwnhqrV7XZQZuTGx4SzZRFQl+Pa34qWa/Ml41Ax/MNEheu1KlQQ
	 u7lQTIcOCYq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D32EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875502871.23151.10761103621964118778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbfe7bc0378d9c43a2d19a7d8173db34a243e95e63719426e887d5079cc68b8
Date: Fri, 07 Jul 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688755028
