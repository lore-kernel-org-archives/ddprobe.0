Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDD063A
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0700C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675921265;
	bh=nqlejJKKpcFmJV9MY3cj8VfnN1UOTfTG1SMunpmVhj8=;
	h=To:Subject:From:Date:From;
	b=Z8x1zF5Qjg3CYaPnlg+ypmVQwglKTX64A5HW1MZryTab2D1Tel/Ju/V3AMxXQtJHo
	 +n4Xukg+1tTJcTFderCGb3BknWjEvEkrWxKRuWZ4iEgetP91IpexNdJAZ8DZnRlsPg
	 yJvZhJh6WbUabKFOvs6sai9pyEBgrIYUEndZTnsCB4FSPukxHnjGBIURrcmDgX7qfT
	 5DO6DqauIEyoqEEF/yqZEwnO9GQJDIlxWVc+AQ5fvlOFf5z2xuk1mfIpFpf4MO/anG
	 D/XNrVRJ2TAOj5UW212PayForAvQMbU9JPo+kNX7m3ND7/iZcfqbO42HiUGrtNCiT5
	 PBQa7g9YQJ43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6AAC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592126576.25311.17236568504612648438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b839aced8c1a26cebe712cb62fcfb6361139759a8d265e67bfb45a484bfdb8f3
Date: Thu, 09 Feb 2023 05:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675921265
