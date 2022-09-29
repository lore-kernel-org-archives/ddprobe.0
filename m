Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0B67B
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64871C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664490653;
	bh=FMthzGNpy6zB+1CwVckKz+sh8ZDlGhmLGDvgLpOVtd8=;
	h=To:Subject:From:Date:From;
	b=cFWJMGRgNA5xMWewoSaJz41iVSyrKud5ehSQTxXse8Jve+P56XlJZ6CbTVI2RE8oe
	 1VXKd12wZ+tPmvpOFrp6UkPcz0EO33g23o5DHSqVa8AyrtRd0x9owRk7Ap845Oh2Rg
	 Lugiq7tdOoz1Yqdk3uKEwBJooNmpRD4jiNfDe47JaxYUe5u7dsjiN/a3lA9k6H2JFj
	 Q9jH+DvihVc/ZNnvRv/rZb6cQPR/r0+kMCWuJ7MBGvVsNQHGXVFLhS908b8buhMNUY
	 3FxtB5wI6l6J5Of0z+J6bvaMJkh3j64shHu2AY3L68BNPIX0kKWUPnuiFUaegspway
	 Vrbwhj3kuo4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50864C4321E
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449065332.2145.9767756310819184186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84679114a90cbd9ce04304ef68a7f202baac1a9f587cb945239c4b2b5ac4b1ea
Date: Thu, 29 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664490653
