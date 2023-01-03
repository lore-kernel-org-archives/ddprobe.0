Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CF6362
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA980C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672767087;
	bh=BVY5F1w4abDwrARpny2sIOeMUaA4WygvC1mn3AXLvX8=;
	h=To:Subject:From:Date:From;
	b=sig5+ILCEpuGw32qC2/Ms+NXftaQ6dW59qd4aqvynJ8b2dSXRbdQ3husjEFKdx1MM
	 TptUwmNs6xYMWF9uACAWzEqc5TQNabWw9wHWBeJa0mNyZhkaEAo4Fc21wQZ4WsUnNR
	 TY0FeBMiHmhwAh+kXwob1o1w/ASJymJu0lR25mVycijw/0ls+je0MljrDlBpmJQ/n9
	 TXICUAY0PG4Q/kLwdfcBxzuXiGqquQ/6fHhhsouFjLo4pGoi9wO1lOd9Xur4MqX+aP
	 CEX+pyHjRQ6QJNVu2Sbz+JKL8MDPjxeCtzHBFKouzL0mxcrPJ7z2wQ7n/4+ovPqLSz
	 Ifg7b0AqVXX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87829C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276708753.25185.13506848963585078660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da321b3bf41c10be655d302d5da06010796506a587305f20cfd695d00185a976
Date: Tue, 03 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672767087
