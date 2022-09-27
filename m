Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A7662C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFC8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664281853;
	bh=hXIMmmD3QEzjCYwLpiaNydecuzeAfILQat9v+Ob4geU=;
	h=To:Subject:From:Date:From;
	b=eFgAJdKVhM44A6Dahy5YkSOmutGGJovtZfZkuxB4rpfvSMfCT3f6dsU9gSs7G9HPX
	 Lco0qYiwGuLwbmG602ImPau3Xw4BWAApEKLWiN2mZPEWKCCKp4p9wc1zqPZRpkgZ10
	 zfeu3H5Iikx9BRRFjtla+yWaONVAyxz4FdoX3YkwfsdrpsBvk+JahIc08/RQXO6WTB
	 JY/chO5geEek7eeJRCh9zv5ycgWpEHX51mzAVHinIEEAUHRiozFZa3qWHZ3ZEx+kJZ
	 nBwgu9uLfKiFUpcGi+vgcPW8RMD4nXHA0fCLKJFjwd1mpPgNyu5lobFP9Sttyq2g5B
	 AOZo/XJdJmKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E68C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428185332.7199.7625477216692650829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474307a09ad52cbd08800d1a4633f565cf359d427b456dd78b69ae02740b7bf0
Date: Tue, 27 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664281853
