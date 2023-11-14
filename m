Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1300B19448
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqEEAK7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0AFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699994896;
	bh=tcDfkPUeaIyMOnwDlnOzsw75w+f/SlSMwxmi9Y9qQAo=;
	h=To:Subject:From:Date:From;
	b=hqEEAK7ygrrxnBrDmgg3w4loIUpMNlNHKTi1rbSemri9ierZh1IChvGSQrnfkXG76
	 QLyYwb+RVPj8L6NA8PJZcutcJUHoi6Qbwz8Kculv5rJi5NjrMxtDpjtKjcG/BAvxIp
	 uOeLe/sy5b2Qxcd2K13IlSwmy1NIw8VD1iMXRZugOzS4PDPqOEd5eDgVVAeBTNOOIv
	 R3iHX1R74jS9Um8oxSFI36sLAXQ2EYYz1VMnzaEOmGpB7bcpGt04NhxhX+vQR66hXU
	 s/GUgPJbhpnAXotc35utTMNldC+/51yMNZDGDoeUpg9BljnBP54QvZqVriem16Nv2s
	 pIX/Z/rIZDX4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2E6C47DAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999489640.7608.161754910687475034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802d3fb54668756580a54c2c01a4373a04c9ce8db55ea2e405691c8e4bfed260
Date: Tue, 14 Nov 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699994896
