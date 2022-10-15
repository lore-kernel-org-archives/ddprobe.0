Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C196E28F1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3D2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665862853;
	bh=r3GF5tXKg5ePRPJdG1Y5zeSJ9oSNZbZ/P/SS7HfOSyQ=;
	h=To:Subject:From:Date:From;
	b=ZiHYXrM6ll6ViRy7521TNrZ58EmjdKtP4ELAXc47E+ALNgiOXWDS3YSEaKHzXZUsh
	 7Ndu3euayep3SkJk3YBaZCGzVOwjeQRd6j2KwBLmCT3a4ScYSVxPQSNE6VNL+YuBAm
	 rvAbcZNFhJtnsS/BLpjVKYQQ1v9+emcqTT9UiHV6LrFrqzQvfLv0a6BeUvEGDqS/f8
	 Jq4JmLGDhFhgVLDN8t+KexQLh6cNJnW5p0RkRA2iXsBrrstxieefHubwUXfkEY2l8Q
	 qzVqgDxHeiWIgwamJW2hB2WnYb1z8PO6QcNcWv0OQPf38uvJ22anSBUp8N4CiIW9+G
	 N9S/sz2ewfiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DEBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586285332.5953.12096141140393190641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809dff7c0e9c76827d2feecef5a8cdae79e5c382e121a9c3d93b2f3415ca0272
Date: Sat, 15 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665862853
