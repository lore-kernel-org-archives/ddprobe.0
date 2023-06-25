Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C647E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFAEC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687674188;
	bh=hZIAEUOguatrLSHn1sJdwRj6tE0DciVykjgL9UCmmBo=;
	h=To:Subject:From:Date:From;
	b=Zsu4jnpgosHxgYKP+HmVHhyIm/immmn0qACyt1kHI3w1/E7Z8+q8ioiWbi9Mr/iZK
	 jJSvwVWy0QkRNEXX/3Oh26OVEb7qek2MbUQP3uqCityCPXXSgqC45/OGo8rP2mzqyN
	 6eCZqjqqn8McdncDW1bAkTN0J3rTP7GZSuxmicIWvFr07HNErkfNgt4FGI7NivaInp
	 GJflexFdxDP2+/9JIxBymeDUN1oj4boTsdlMKxd0IxisFpLnAV1QmgzNWrGORQSG1t
	 i4yzDI38m9pGocn2cxKF7QDOmrubJcbuLF0yZMOvlZpKI5RS1SRQ5kQ1eG7DSGRMwI
	 djeD98ZDnx1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4414EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767418869.26968.18085572148346461519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e52d97af627685af5de03c293eab1b8d8cb0e936912bb61a5d42dc2ef4a1a6
Date: Sun, 25 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687674188
