Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D41139C
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4267C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681700825;
	bh=OxIrMT1Uy8XWcpMRWZtnah1eFBVn1Heal/iXIkYM4kM=;
	h=To:Subject:From:Date:From;
	b=S+Klwzf+kLwdbNO/hYDuCygcFMZNdkTjb0jclpoYyNLSgyaSTCMnTH9hxq9W+G9ZK
	 xJO5bMzBDY43T5yPItjexCj0dvD/XiXlSyCAaFXp8+0B2YOdYadmbf2KbUBdVDcZCR
	 YhS4hU16jAqR7gNbaFphDFdChqGsCygGOKj0kyKe1aIsSZnXoHMtA+dRmWcCxpo6Wg
	 ry+dD253+meWNOy0hcAsXS+rGxG/TM2z8nU57f/fxlAiCk+uuNrJz3uuF0V3lOQkYb
	 MZxopa5a8qXszkuflnTCr+HnrSwbV2tcJ7Ek2flWZKQFifN/WuoGTwrgTU4DKHyEgx
	 8pkrLq8kkQUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B438AC77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170082573.17750.1970899407100525527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036ceca2f0075c379667854b3168e355367be7852b9180699901e5bb7f90a2ab
Date: Mon, 17 Apr 2023 03:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681700825
