Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B3D2591
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADCAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664542853;
	bh=o7mf9yHoeyRkeyjnbBjg3nI2JQvuVEVJGJi2h4I2ZHk=;
	h=To:Subject:From:Date:From;
	b=I2swmJkfrzcCFEOWz943ALxiAkcxeRQ3jGGLQewE2XWjrphLQdfqTOxBMF7eV9U3A
	 5lp9JE0TiJcghROlzXRWemssSS/PcckS346QcHkrYt4pW/BNuvLXRjxNlS3UkL1Rf5
	 /HnvqzceBbSm5C3TW6ayMgc6eLwu+blnzc1TQOW+yM/Lw71N84IEaFzS2Rp6IH76QJ
	 GfuMw4ln0RfFojW5+k09MzNF9yRXtlM3JRXIC+ygAie2OFsYFC3h6FItrKsmnxvETU
	 adezDYY+QUuc1c5pHyiRAsxJEzdyy7zVih+q3/3C6MqZ78n/kAbevMIIpCu/D6Xj+O
	 hu7lkAUd30C+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D2AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454285333.17139.16122077511220156236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ff696e2798b478aed18765113383a389b0e6fe5cd9e9ccfbfbeae04b531840
Date: Fri, 30 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664542853
