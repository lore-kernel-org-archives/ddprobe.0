Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB4B1378
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8476CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671182487;
	bh=TlTN8Q+M+fZJ0aL7oSC8xrMMgLedVUmuDhCcDpXuLV8=;
	h=To:Subject:From:Date:From;
	b=pBEUHJ3IYos96VbjGk6rTWy3ikHz+kh9zh64xPLm9Q0MfoZmx/UAurZPk2/jvHKzA
	 dGIbkRTV6Ve7CAFWtwOn5PXfGTzvJtq000ZXSrw4le0YgbVDeYQPvaVLkK0aIzJMBo
	 KMJpPIk6pkZ9Xjpkz9/Fq0l7z+Zh6yISx5vHk18lIHFm17XbfCx5IawLZBa5DJjYjO
	 +mMz8eC5XSsnnYcpkoTUP3ezbYyAcsanyAA1Gqar0keuNABvRlRnENGGWn+zhR3QyS
	 43IthVo5R9lCKh5wpIK8WSbvH4PoDctjvqRsHkS1V/QkM7Rul45GmaMcPmZdSgGNwN
	 XRtJgGCFZN1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6938CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118248741.31138.3317850535241624831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9345041821285aa7f27502bd725b50e706097d5b890aaa017e82e5b4bfb0050
Date: Fri, 16 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671182487
