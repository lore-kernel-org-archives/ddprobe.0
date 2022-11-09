Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C9A17C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9DBC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667954454;
	bh=PohZFfwnT5uSA9G4+BhsZ0O0O03sYbWJfAOte3vEdAw=;
	h=To:Subject:From:Date:From;
	b=CanZ+AI6itlbSHK80cgTz98x5NjMi/fBT7bAPkHKBLv2AQH+FUibk6VBycNRfuXnt
	 95ik7HgMcppwGfZwIwAWjJOL/UdP4k2+WxV269NGS3rxYVxIq3P9EE13BmCV+iDoG6
	 7bUU1kQ01NXEZXmO6gs/FB6PFOnms0A40rW5Bn56uFcuWrb8HLl3Qe2mHoAOZDKbrb
	 PgEq/v8h47CE5zxMtv3+ZSWgjXNpEyZT7SJWD4ZR3WBPGfRUeiARp00HpwHVS9grDQ
	 usKP3+MhMWW2//ByGBtRXnhHOcH5vQfWF63YEnPCb7+qdP9GsiWZZ8xI4BXbfpUM9E
	 s7IeEkci5dRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58423C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166795445435.14052.13933243176103610612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8da60d5f63979aff15650edc22c84838603388364bb9a4d6119ca92478fb2ec
Date: Wed, 09 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667954454
