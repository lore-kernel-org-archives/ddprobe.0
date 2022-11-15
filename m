Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3371FA0
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708E0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668512454;
	bh=260B1/adTLCxfSUL8+8W8+UwIow3xFrIzcCWDkNRabs=;
	h=To:Subject:From:Date:From;
	b=TD1ma84xeiXLBLEyFg1IEpHgf4GglK00D0H6mjotFerd+i2luZEkVrDnFIcRVka9F
	 45bZnRdDGtk48sglEzmg+1oLiu/AJ7lIXTjXVPvzpavffl0jd5l/mckpEBUBbgMrGR
	 059o+efjhfwe1yrhMmVsu/oHzJB21E3P1eAi2OjhgXD0Z7h+UespRZgtz/iRJTp/bf
	 m5uxIVb26iATO3fJ3TPqYJQf5l+rCIT7vrTLFpwiJQveEyQpeYvxoAoAYBWyqIXzfR
	 S1hB4o9Q4OhgZmsbcIFkvCVDIqMNRYZCxc+ltf8EVUkXvQk1QtcdEpHzMR2r48RSMS
	 UYWhsJv5mEykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540EDC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851245433.7599.14623741807728203188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffc65852b583d2f7e0fb832817025cbc6f50a3f01e5011f3df92b8d55f70f1e
Date: Tue, 15 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668512454
