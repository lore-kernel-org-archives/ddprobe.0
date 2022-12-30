Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130B923B7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B75C433F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672400487;
	bh=L5XycVPkb/B3ne04R3y1GNyDMERVFqA6LpIY/g7Tn9w=;
	h=To:Subject:From:Date:From;
	b=ra7j8oKOBfTKdo1kse1S7n0Ypa/ITq56tRTUtM5QERbGayW8g67qZbgyeDf1QgBmg
	 j/ePnghiLDXPHzwx5sVMFMdD4kc/vvlxGFOE1aVmP3/oNQ4418acx76W2mt2kFeZRM
	 WZU0JrzQk86Qn1qiI+2ZruDccvUk045NEwLJUZCUF5Dc+7oQQbd03vuTDGufiIl0lv
	 QhMNW0/asSC6oRfa5fWDLHVNy25GS2MJRTzfBQ4ICJBTvBX3dc+X1Qp4Cbyxsbp4c1
	 pjyZ3UAAWWvtC4To9ojpPD6ZprinWx2DKWwL2gWmIfjPUbJXHGsQcYnyQoufQh49eL
	 1ZT/GJIv5c3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F19C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240048753.20464.13198744854455779048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6309a6d0b0234c715174217cdab0387cee13378b715c2723fb43413a9326e20d
Date: Fri, 30 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672400487
