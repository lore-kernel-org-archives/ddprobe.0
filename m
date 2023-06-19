Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D10C2CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC534C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687216928;
	bh=z81Vk/cN/i1JbugBf09xtZtYevd/AmpfDlajagZhmgM=;
	h=To:Subject:From:Date:From;
	b=WbunGPmYr9MpERG4BASQmJT7Mt/5su4A0zVPzrqIAf3bRvQxqAIKosGnz6ZdHLIol
	 QC+OOis6rmu+sUCaDrBZ17EAM+dCnbs1NcI9au6jVdEK9Kw7jTAeR6KhszKRElm8Ux
	 hjb5R0dUcQB+UfWDZ74Anrns7vGW5gfcAvVsMorpoRS6y0l9r8f7dTB/XHS3wkNPA4
	 A8tVfxzN7fWp6JB0bXNW+MIf7tlwWI6kP0mE8ubBCirBfxk+P0KJNnC6VULxlQfu93
	 Xs1GEDUdAm+mEy/mRxRfpUhmpqjPBgCd/oZVkoYCJOiUfSe9ZeB9m20mvHQqvJSWER
	 rQTCiRhhJT7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4630EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721692866.15448.4410560252479916528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9292881f030c16b9d6505049f4e75f8f3101031f8dd9c1317efd0a0aa95ddef1
Date: Mon, 19 Jun 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687216928
