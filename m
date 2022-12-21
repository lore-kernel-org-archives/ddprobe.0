Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0F57E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8EBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671628287;
	bh=PToDanpjGg/wbmp1GiNlNe2hU0bQk4IxLt5sVvhn/rI=;
	h=To:Subject:From:Date:From;
	b=RbF9y4HLUFvmjomQmRd/8lGnRMWlXG/SKfvNAwxy0xn3Z7LVOaYHWGSjsSJ6065e2
	 Emfk/bpJIMDR1nEuQxYkqDi0yoQaVQkJV7ruTb/VtTbpB//Dsa9g/ZoguVMVS2N5mu
	 uRHCF0zQp26e5OZ16ZEDv1M8iM0VM7ZBjE5s9A291CWsW7YIyVbX1yaKjpA5xzAhcc
	 dDe4bnwJpH7pdJMDPDdxTCYDF6DC9bBhqIWF8iusgWCiBriRyNK8mu+RVYwsOlm9R5
	 trtBIIWmTT2vUdtSm3459754VgbC8CplIuKdYbPlbbecxnWOu4JUzqWsGpbj9gr2RP
	 b3oPYz7hdz/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF4DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162828738.5336.575272449913244932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791500abab0e95230671418123b5d7729c0a65ec64d1b2018b0a7f64f6288bcf
Date: Wed, 21 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671628287
