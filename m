Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5A610EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D31C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671441687;
	bh=GvO0uoCco7vfRwAAjak87JEu5ijo5H9dik14pYTnFqM=;
	h=To:Subject:From:Date:From;
	b=EawG2h4nZxc+TV0KYALuZrgykMNQxcG1NjoMW09HMBPDAO2v1ZvcPcn6159WczMab
	 qDgaFpFgTTpNq6WBPMpuruMU8KxzWQ6pGfjr8VJWIBSkIaG7xv33kkTXTVPwc/ouEb
	 nDd6NPhR9NG4JKcqhU7tGxAHHh4q3mikF5RdZwPssvFcI61bMchR7lF5LV+RFurnYG
	 qXeq6m0VZ4tBHw4TrspbMGcdje8Ns+NPoMFeYYA6xVYEIRsiZz8HkFHsKJXD/b/yL+
	 elL/MZXajh0IzvZiJYZ5yQnc4haknFlSDYYeaZiZ7j8KDmOcON2NCXj2y1XIe+//QW
	 TLJv2zQnlzlyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6818DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144168741.11065.12327475122920125587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf12005ff2d7c1e3ae85b82208955ae1b21a2c125c23368c544ede853607f9b
Date: Mon, 19 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671441687
