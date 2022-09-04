Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF3A7E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715F9C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662258053;
	bh=hFC7GtO8xsT5++rwS+PtE7vd77bSFqmKrsGBYzQ0wxQ=;
	h=To:Subject:From:Date:From;
	b=pA1mHg4y+fx5VU2w4q7LfxX7LkI8TbsS4PhNutiRtxpjp5KGDiaYhPmozJBJtA9SK
	 mPFJOQVXg4nyOKx8weyk9msmEvZems9q+UjWOBw1nOqN+epCVASiJnCqZEIvLitCQB
	 N05zSrQ05F3Jpxnlbftp7mkN3PoxHalsPsrhLk5JRTmQU/bZPgsMMsPOU+vR80X0kw
	 Lu4d4n5jle2m3FTOwdSJOcCmvZYK8xtoLqjRrCts2By0NOJQJpkiDKxqWsyr9Yg+fu
	 evZb2Jue4VcQkNlHzX96zGQ9ysYjth078+uUuMrn+8irquAyYBCD3pWhK6XdtNtfv8
	 d+GaTdugiZ7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55225ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166225805331.32623.1124776675637824023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758314086fc4d806e68572ecf5ed1791cfff1f8278254fbe382a4367ccae5eb3
Date: Sun, 04 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662258053
