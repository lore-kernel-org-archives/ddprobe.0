Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6807C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82571C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663464653;
	bh=T8XXw6tn9j9BMycBRon8PUvawWx7iIns5uUEqENW1N4=;
	h=To:Subject:From:Date:From;
	b=fE4fazYr/+Hv2O934nhIeXeB1TH9364WPK5WtaROwktDC0XtlTX9pbNplGHYlNL63
	 AO6Nq+tmpHZ8mEVeoa/DWoyyCjWPHB/Rsw5qYI066KXpMMI6CS8SbjriZxq6/6tW3s
	 Np+HLTAmX7dNmL+Y1tHMBblsrnay1Xr9C0WIHGpy6SZqC37h8PNMfNGT/Y11JQm76x
	 V5+yzZLU7O2/h2Ma7AuKLYIUitDwwm5E9iWfSjZhngPAp9f70ZOVlHsU/LfPRXNNtU
	 zRD7/wus/n7eV+CsOEDlvxg6d7l0VrBD56yyrtrgbaEJRFvBCVT65KSUWR/W5fEvpa
	 4Ug46dKnJM3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF7BECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346465335.32233.15139978527292578333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f89fb4aaa2e35e03834f67565291813e41700caa4acedb3f2e0721a224c93e
Date: Sun, 18 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663464653
