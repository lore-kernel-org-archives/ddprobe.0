Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2DB7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F05CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665884453;
	bh=w24etGmg2FaxAc3ZP0TrpJqDdvHqAlwh80kgl9P7Row=;
	h=To:Subject:From:Date:From;
	b=B6PCedWk8wDK6KtQxelbdjoD4wTmNndN4zDqtMmgnPqdlbZwz+wxtNJ7kTEXFXKnh
	 /2AgR286s861GgluD5KBaswghgYtxuRPPinS5pLoib1+kFqkMFpx8Htx6uPzsI/Kfl
	 Ti7QVUWrnNUTiojkpK+eXGRvnHF8SWxiciGCyhlRCOnR1d6hs8CLVUevv1M9zEpEGw
	 mer9HyEurhvq+WyTykNQGkM+011RmSdv128VmQwPL0xOmF4USWJjZV9WPHbeL57hVY
	 nwlS1VjwG/0J7nozk3JkQrF8aT7ziboYhB13pJ/pSKt/mPl99MXksJXttDjmSQC/dJ
	 go3FIcyjrFHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E87C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588445332.8773.9771759916715442260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c6b6baf692c88cc1615550980b33b3309e359f63a7df0fe05ec5ef5b33ed23
Date: Sun, 16 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665884453
