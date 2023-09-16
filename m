Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D12136B
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 04:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C662BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 04:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694838908;
	bh=Ur9IZNQ3taGI+Bpyvx6Q/XxjlIhFutMzB0xwyXEEuOo=;
	h=To:Subject:From:Date:From;
	b=tmV0G6+6gPdnj0Hce56q0RhxdUHiai3mnNReUR+KF6zRCjzpivtPTQOtRJcDYxfQJ
	 GegIru4ibRebsuzsE/8lZrvrLx5agtxBqslQJgHHN7ZnzAPuhEMsENdJ/3cx36Dj9Z
	 G/tyBJUd5V8XyLkWuodiY86Cyvmrv+QLaYxRj4fH6bFyL/Yt1tjUquypgtK7dQRt+X
	 k5gLq4iayBcT6E+0RLBD28tXGFGHU5eEF3TEJdtTSHDOLhgNbIdVUqV58xSe1l9Jc+
	 8fEP+dtt6z4lAPz/kBA656j9WqFDFlLsJF7Ai1w8wCx5icTieVR/mybqurBh5LVT0I
	 xyCmSYBvS/DHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56A8CD37B1
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 04:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169483890865.17305.2337842104933796805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0673dd8578a23efe67ba95ce5175e94607d9292ad919172f8491c92e1f6502
Date: Sat, 16 Sep 2023 04:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694838908
