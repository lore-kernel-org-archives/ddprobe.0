Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765B2A23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D839BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687954988;
	bh=G1Jonbzq3GU7pIpsMxBa8goLzP+5cxKaMlEN/Wn2/5o=;
	h=To:Subject:From:Date:From;
	b=Wb5JNuSOvx1Q7EQ1NKkzFpeSdCjNVj+YMiQBPoilPiBkLJV8FrHwLRsSWc5xUSDbp
	 rsbs+k7fzF0HS+sUx9x4LUVNDDc2i9SvMBFvTKJIqjtlpnPT4ce6PxiQ1yn8oIG60a
	 SmmiBUFVY7TIWrM1EgIK+9y8yho4JtVqLqxyxS0x/01B4RkehqnMNR1wlgLrJOYctm
	 ZhY7VboMsbMn8ASFelX87tabVXxjotVSz3iX3nbbX+0H1Z656eISAoTx3zcDdMoqAX
	 aUJP4V1P0XqaDKpqOLVKxoDLG5FP7HQ85qNgFOxIv7Qj6wEqtOsDP5prmgGIk6+sFl
	 dHsgPfy/Ga+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74A5EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795498874.14694.14153268525244124275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47417cef7f488a6cf84694373a9bffb7e6eeab05a04be63bc5d20352fe937e1
Date: Wed, 28 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687954988
