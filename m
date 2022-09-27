Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0F080C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7030CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664286653;
	bh=M0u0kJNXwNyZH7FZHGMpZPtMkjTjRO287mywli9zUB4=;
	h=To:Subject:From:Date:From;
	b=BtJKQ1GgPr0B5SxX8QksP5wZNONVVxg4Gq9/ta7y30BX5tkt/MfDvXhya6XAF5t7o
	 dshppogU4GakbVrNCfbCnQRkUxuWhVsbUHNYKMO6nkcTfHza9lVwSXd3JiaJx1ys/U
	 IrAI/arnylVTB/5h6PI+01XVj2WiXPMJrNEmV+WkFEWFZtK7cbDrR1aQX4G4Hxuwvm
	 x6uHbn/2LRMIbBExF2jt4yeGagvPYwWkqVcK0hMKPMPP8S4OStSqZhZNp7BfCL11rS
	 DQSsJJrqUR37RbZ7rRMcEUpMlB+aJgu5Bmlr94XjZDz5PmfqZzGXMURai2C9jx2irZ
	 i7Tylpp1hcKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5321BC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428665333.26095.16471931215545241069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8538173bccfa6e3cce0f7cfe0db99b4bbab1d8bddd4b67e7244123fd5ada59ca
Date: Tue, 27 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664286653
