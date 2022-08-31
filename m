Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0B1635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F5CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661914253;
	bh=AOVD65Cu4AJJJpvMHK5Pq+7pWjF7fJEqLPOW8e3C8B0=;
	h=To:Subject:From:Date:From;
	b=LTszOR10MJrP8DGvTb+LWKI/Nj+zhIobOR0hPxaRRh6mP3rDYno7HMRR/tMVSD0e4
	 j4jS1XRp8VGRgI6H7dklChunu33SCQOjfXAx5dUN/Uy3ZcN+lX1oTWUQTQhlGOHuLI
	 WCfe50g3nwtO4UkFeab6VQgPtXpDkeiSZ/gWbzqPSUMTY1iAMkRlO0js04bR5Mnxxh
	 ZcuPf+iMkdUsFxEhTgUikL/Lspg8zoIt7ws6Y6uw55aRJOE16dHX1NkZbYP08GTFA4
	 8UfNsCeGbJ/9MgB2156fd4va7x+rcWukdD9ef0k/PVaCap39rWu+kMuaKkK4MBiGI6
	 XGstSalGkLYmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D74ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191425334.19966.15221839099420196429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616acccfc25d54dd71d68d88dd007ec7545af5c3fcd4b9a3a25130e81c5dd4df
Date: Wed, 31 Aug 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661914253
