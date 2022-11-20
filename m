Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD7AA57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FC5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668955254;
	bh=fnDF+alSuJ4v/2gKCmPihuBCAl64Xbs/oEjs+PmYOl0=;
	h=To:Subject:From:Date:From;
	b=NzcnlO+o3f6rwNFlDFhMjBLrfpBZgxwBhyP46QF0TSaQq0jyOJSNsOhfsM1pfNdN2
	 y6DRBTktZ4XsefQcpMcubKlIoCvQyDrJ5tw1YjKXDnER4wl0YSCP7vOaROLy4dSSv0
	 gCfIIil8E1sNQNexFhk9AhoPZ+xeiCGbKJ6mCJwHyfbnfraKzd2ZfE64dKD6UuUBg6
	 QA87aQmJeOznuZnCTBcxmrboKk6XudSOO5VLF2q9HyXlrDgIjmcvIkQJcFF/bCBS9h
	 rvBiRHSZ/2AFTn1l7Qvxl/BfEoCH8hPVcx0p16sZn3O698cY3MBs0hWRYPHDG+B4h6
	 Nrps6rzeQgZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555C0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895525434.18752.7407299833094545978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98e8c04907324150000e60fddf10912f5f72ee75da1558384656e6bea1268f9
Date: Sun, 20 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668955254
