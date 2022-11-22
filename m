Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C551F15C90
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8C1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669147254;
	bh=gmWTvN/EOcTfBlFnHgB/x0jyVmLQdfxOegLBAX+Yoec=;
	h=To:Subject:From:Date:From;
	b=Up+8TIS72CUjkWSUOglYK++jfVITkq0QcFseyQiVXIs8Ph4JB+sWCJQWYZsr/PV8/
	 lHjDHJzXWdUynbCljY6wle9R5NP2pfXeIAoOQpqLUMH2zzq4IyQA9msxIyELKGKzqz
	 SachtixfmFhwxIGFSsdDvMmY9JgvguNq7vyeC+wjq2VF7KVNhAq6s8fmV+HIOWTmAL
	 TW6LVoW20GIG4t+HApN5SWOTct6W9ypZ6D2AAVIU9v+OfHOUopCPvVFrSWUdk09ktb
	 CyB3UTq0GzJc6vvdPSIhecCjARud6i0MT2eyA0fAZDN4ShQL/PfdGC/DyuQiRtsyGJ
	 Dd89rbLZFqleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E69DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914725435.8884.15221378017619206477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef544cc7c8c6b57b69727fd74f886efacefa696b68f9297c301363e19ef58c7c
Date: Tue, 22 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669147254
