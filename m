Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1387E61FAF
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnVX1oAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A69C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702388296;
	bh=9JUbTYhZuhjx5NB/iWdSTwU7mhrTT0WLuRyLLU5r1FQ=;
	h=To:Subject:From:Date:From;
	b=FnVX1oALNT8WzSPbNEwpZAKFaLQsjQnxiwTV4F2pWg6jijE89jx8GyL35rtoAdBov
	 ylnjOzPwssL6cfNWj7FxN9m56Bi8XW46mjVTf+/XYuHkBRCsHjoHTyblfhQbXYmSXQ
	 +LzKZo3poADhcMRw0Wt3BfhMp4jFDVqPQn5MGbyh5SB92KY07Ii5980vxfg2wG2Bv3
	 QxeCNEqTKzrs9ZvuAQFMBSFlK8nN5i44r5BtXvY9UKPFJC1Hlj22JYKPF2nbR9Kh+9
	 fx+ZcdOn6VvdzN8gTAm54EwA15XLLeXELAEx4u7R5x9VcdfdIBD8Q11O7wHqVnHw8j
	 W2guOmQKWBSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6963FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170238829642.20331.17930653173290319919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6ff61d3cdf1aaff54ff7183530db14fbb3381b5328aff147a4d54d715e18a1
Date: Tue, 12 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702388296
