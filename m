Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DBEA44
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E49C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665210653;
	bh=TlIHqCZBeNmi2zz1BA9newDRoWtDW3J5P40f/oIsnqI=;
	h=To:Subject:From:Date:From;
	b=IYmAdjzXIHPQDr5udOomg6d6Zj/WLNnTrWb1fnhm7C/rafnBd6XQRzHWdjfRICMx/
	 Umd5c7ir5nLxqHVSZXNBNQDjCoJl7SKxUReUDzyQwNxmQGGoIocxLGoyqPnTRuqC9v
	 vXkSX1iexOZo+zucRZDsEQ4YGMkH32VRw9/SaE96i1AfTSCmMEBhD7QvI8Nesw6X6f
	 V9xi1SNs99jUwRmnp0ooCbtunY57yjD6NINT1gaGAN+qTnnhJMvjSAV+w2rKY31NuN
	 VuKYs6N7L98LSMLgOZ011fxSMAM9VSEvRzQdurKwB5e4jENdhd0TebEblTu5LOPSF8
	 g9klULbK2hCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C8DC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521065332.10747.16644069601880692570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab8ff009e008158caf04e764172ecee677117a90bca2e6778ef33650f57eca6
Date: Sat, 08 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665210653
