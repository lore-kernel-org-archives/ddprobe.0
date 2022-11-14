Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A323B4C78
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 661C0C433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668434454;
	bh=ZvdPIOpKKptmishQ/weL5kRr6i0RQqo7Zn3Z8az8C4w=;
	h=To:Subject:From:Date:From;
	b=KTr1hFI6KQfZuZOADmCH+6omTtq/K/aZIzDsctm6dFq2S6awHhxCB9dhA6YC/OZCi
	 r/x6FPoshLyZ1fYllLLxCKnGxM1duE441yoVOgKOtYP413tqHk9OSZ1LCeRiH7O9RG
	 C6m6rCPNGmGOD0wANNWC/DquU/IRhFWLZDIktyXPQbJj8HD3ji/AKIuGbbBPShMFFC
	 ltxDLYpDLm8Q3Q7iY1PgGQsgLQ0gAQR6XgZYt7gBMO2vYHtgLWXDeS2jtcg47YE+Vx
	 e1Yr/hEX38sXblBucGV6lIohianRRwc3YBz39+LuzzRiJqWrPclegyn9RmC2Jq588+
	 kj9xUivMyTp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F580C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843445431.26310.1532199357386801118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b15c8fa1c9d2f45a73145f8d3738739221e07c46e73b1cede709f9bf0df3065
Date: Mon, 14 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668434454
