Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B465E33C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F532C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664545853;
	bh=5fdCLF+536gA6ESbzVMBYAJ3V4UNUFytDWxykcPo7+4=;
	h=To:Subject:From:Date:From;
	b=TXKzrbvhbFerQS2P+CMDN9h3l1qag7ott1C01ynkFnz5OdR4sEud+IDi7ufZmxmrO
	 yHGb2YZnC5v88JiWOz3qMfOpmCYkVCtJQCB4hb/P/rhC3BRE0376rjdBcfQbho+P7z
	 7Bs7YWO3DTkiRbJtXQTrT4uEALm8HjAskpJ3arP3/U4r1aYEarOSrTQJdGVqXxwMFs
	 VrDRFwGuZbQN+9GAtJEZgDJx51GaSGFRxx+ErKszrSrrYEdwdNwPRT6tHbRNWqcWWJ
	 QsNq35bMd4jLmoRKBjbTJksfwPu1ZJmh6ltPTJh+ciRBmtkqDNn1bwlqhyzDipH/4g
	 kyxfIUkuxYNEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFFDC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454585331.10885.7914580286055547937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5dfb13b7fb449c6ed38ef9ad5be9aebf5535db769cc98a1edc75594fc0fc49
Date: Fri, 30 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664545853
