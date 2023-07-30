Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B46DDA5
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 15:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AE1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690729928;
	bh=/Cs0lrQ1HLQqSqrT707lPXAroqks6ZFq+KQsxhou65I=;
	h=To:Subject:From:Date:From;
	b=d9qxaPWndLzc8yE7bT3daZWEwxNK9W6rkuZGAqTNegL+YN7jDw0Ul5sZREbD9ExFf
	 xom0cH/FTZyEjvDLmySZpRIn0LDInXIiTbHVHZueymE8fBLoSF9HCclebStNPLxmC2
	 baMJ8oXeWCBXPQ/MoFUNZiObmm5O7hW7j5aMPtIIsDeU4w5I7nJhBhqt0dqQIe0Kwq
	 0dVVf1QPBqpvtUPhOKkVrtsBIABYMb0c9cwupUPqEOAlhCTTrcvwDSYDOt/gc+V06F
	 pNSQXXIwGmJX5/RtGfgXTBY41C36GQdeI+cHh1bwK8KZTDDKo5vJZrwJ/Cj9t3Ftw8
	 FDZTWmwJP/tIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65EC001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 15:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169072992868.18814.3204872905925137702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38baa7091a3ed9608793c1ee8850b3d793f99f57dd0e3fae82753dd7cb4e518c
Date: Sun, 30 Jul 2023 15:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690729928
