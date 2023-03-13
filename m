Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441033D7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 18:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7B2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678732625;
	bh=1yxuylL8lcW4eUk4VedKALUx17YFWQxD+Or8b70LkvM=;
	h=To:Subject:From:Date:From;
	b=i9yhhOXj8uCsIrVqqSG0ZkAqjJ4lykXsmm6z5V9KctqSZvvNXCMMhdlnGBXno8qe5
	 Yq8zA52g0sHnQaeYkcukWh6/9gzJ1DK2W8av79rUGKJTevaIvgMBOtWk2cvTSr5TMv
	 p2RqldqlHNM7g9trqtC68LQxD3mFocFTZGPYXriFYW/5DL+sgOhYVOHQfexohKzAQG
	 Asixcy7asRKsVPZqcYRLjK5ZbGQOgBokCQpMKoYAOSODz2cgxZOnOfRjhJKe3e8+DQ
	 MNBtsTwICZ2DholLvaucIGIRuEJKiX88mua998Hmxx4THQ11tdXMT83mhvU4qEk5BY
	 4Iaa9TdMzv4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE93AC74A4B
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 18:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167873262576.5981.15889563847094886487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4990212d3255b5b0da487f888beb00165e17a71e07e89b8332510f58e89d3b92
Date: Mon, 13 Mar 2023 18:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678732625
