Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B571F3C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742C6C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662395453;
	bh=HraUuysP/Z+4X5kC76f1szJI4K55ue2RjyD713dD1BU=;
	h=To:Subject:From:Date:From;
	b=oHjntTALlFHqIdcVFkyYasB0+fuDIw08hk5YY74kfHtdZgEvIlbsmMilLKbgaHqtf
	 HOXcYA85St2qa0OdRge0mMLcAn2yIBBukfSUu4ievg2+0yYoBN7fSWczR6l2byFsqZ
	 pO8mPGw+SJ8UPXF21H8oNcPPyrvA3eQ4LginAyboDpu4MFwr+mlRVF4q/Bq8gilFdL
	 Z6OJ9iKx365ojlf4pwG5wrtvro3ksfxID7qWCqq0SQ1NaIeAKCCR6giBlUO3CRGNk9
	 Ihv/g50xsfpQCu69bKcAOmwjgwISUgOxS0TxmGnRrZ63GkSFv0QZKMppfvqmiQXuy0
	 jeNlCvepbgL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCDAECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239545336.25094.13374412135804490209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc363a2cd628812970bdd14eb4c731cf788b64f9fa08435cd26ee77c91251bad
Date: Mon, 05 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662395453
