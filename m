Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D0D3C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D544C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672527687;
	bh=pWF7/I+OTMBKK+L8CXZxLE/0R7LiWBB6PPeKmajyAms=;
	h=To:Subject:From:Date:From;
	b=j4iVY/0dKEAU2tGCS30+IOMVjk2aOwS5ImB84FDy/P76ElRNTNsKhiqqrQ4zCO54W
	 LcnR/2U8czVMqxVIc5Smj7VkbiMlyxdIaMkjgoVQS/1wjFJLwugWXxzpKxMaQM+nz9
	 IUS9VQFSl9Aw8uZWL0wxJhsYKtchZ/xHlvVRlFfCX9s7Y88gPJ8dnvmCuxIjBoRuvl
	 +XeXEz49kHa6sL3rD4zvR5GELYbDZPceCv4lxW5TtHO3J0q2BS0xgf0sNOOB/iP6E4
	 BNURi1KVGQFP6QvpB8ZX/YN//Vn03Qa3ZrWoHxMc/jSCHlIYdMSKKxYwfUhRGU4XnF
	 GcFldTL/UFcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECA0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252768738.16274.15711965795489140736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a737d1a4dc5e06ef2e86183fdb34d5d2cc6c948ca5de18a9a2ddbfb619bd2758
Date: Sat, 31 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672527687
