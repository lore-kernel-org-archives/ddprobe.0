Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E892F29
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE2EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688978228;
	bh=wbbkqDCILEGE3XOm34KA0YxGi8um51ts5Nnoa32KZnI=;
	h=To:Subject:From:Date:From;
	b=CurgoTWb2vsvgLJra2v84YwKACVlE760Utqk6B3SJxXSjzLuvQmbBnYDyX+9kP6O9
	 a0/aj2Vea9nGeZkal41bKH6hGfgaw5d96ujxDJuBHPa6u/7qo6xfWPCJLCvbis2YRN
	 Ub0e8+5YN3IZEwVdmhlBNhNKDPcdkzjUJwtBOZ4knuolY0aMR8qeO6iki8/I3uhio/
	 SHxQkFVoBfN1J+Psu2HDusl7JqwxL1BVJLi4yjXJGndneHmKWk+E0ogH8pI3OTk6ox
	 fddwkxmEvKkB5cqjTC2/ME+si59gcWQT4W4msN5Dl0UKbYs2Vzk9Z2ycCXeT1bu1Xz
	 LyEntqptjGfGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD6EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897822869.17329.3682481037223731063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40770bcbbf53cdd28033f18d39d424cc1cac09e4722c5d2c700ef69b606f256a
Date: Mon, 10 Jul 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688978228
