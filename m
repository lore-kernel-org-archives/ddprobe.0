Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2713454A
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtrQCkcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C512C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702292296;
	bh=6lU01G2W+wkixvJAY4sJE9NPQI6I3DTq1AG0kO1j14o=;
	h=To:Subject:From:Date:From;
	b=RtrQCkcZb1HMurXfbQDwZWIugxL1KmktKUDvAKn7lLFF25jPFhsxjzJmQJfgbV7Z7
	 OzHXgB/zTSxtkVVWZ2RZur0XtB2FWdQ2Yv2BwuJl4E64gsEFV9UQtA5YJSzD/gotx0
	 LAHLZm3ffNYrxaMBOiJJKmJne4tFuLNcIreEmT/UZkCrlddiIjrt0FUZHBVnOtx2gT
	 4DV28kbH2b14T1V380BQLZmpeixMs25KUIjSbKOYDIrUHojT4WlHJPdrX83/HyOJBs
	 1S/43r+AQhTfsq7g+gssOkXGxAxiJsFwL3HAuAJOq28PXX2CH99mx0Jo7U6qJjsIap
	 3WPjF6Yrrm8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5DFC10DC3
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170229229638.21851.4424238933828671899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1587a1df6f7a9fbbb702b8879049059e8d2c78634666825e979ecd9826272b47
Date: Mon, 11 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702292296
