Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15079171A8
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5864C4339B
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683545885;
	bh=LU092kB/UXAAI01EpNbwN7XgMcBeiI3SWXGhjQP74/w=;
	h=To:Subject:From:Date:From;
	b=PoBE7ygIX4HFwQUHaFmg3DI7m/0e0sEpMmOwBNGyjHxBWeYQKdM5c6b8TDBDEUd/0
	 /l1MCYlodiLMXEooQYnmPQGf6CDTJpNfks2l4YW4Q3MZBPxKF4mus5O47im3pTktHS
	 FQ75kOX6tBrrPhXF3KjmpdhcQ/C2umXzW62TOClRBQ0Nmhd2g057GyfWjnF/BNriMW
	 SBInjAjA/TG4WuPXLi68L7n9K5nVovx+8ObL78KdjztsBYiITCCjtn6IsluW5SgrJ6
	 aq28xR39gklL56yTTgQ7axBBL76clH8blC0hR6+Fps4ZVMewWKNCHdAkGeZqhrIWEW
	 HuTHT7V/6SDwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF9FC7EE23
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 11:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354588575.26185.8097125125272692946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ff71c490f00646b64b47c6b8eb3b0dfe4c76d33bf5026229b166b56ef0ec05
Date: Mon, 08 May 2023 11:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683545885
