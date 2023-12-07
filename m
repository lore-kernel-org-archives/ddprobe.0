Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060A33A8C1
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeGdlY3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7452BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701955696;
	bh=ds1FRe3FQbFiFilBS2C/hXaDwNctGwkTgQfZ2sx+sIg=;
	h=To:Subject:From:Date:From;
	b=PeGdlY3aWQSCAdigly6kO2sgDDxpenoHQPal7iSPISSzAkqxiNXN6ZjaMS34DE7Qg
	 mzToruS4dhiojHsQyGcCtHgIHRraWH3NM9GWoHGZKwV2sHx21XU8ZvlSlH+kWw6n4m
	 1FZoMgXhiWnaYAQAmYnAEoOumlhV3ZIIOScQ+6+SdzfbICmBm/6jLGwzDrtpK0onoM
	 4kucy8mYYU+0utSfZKoyJdGQbE9jmxmgBK3GRwuXkKJxF9HslgPPv+u7PuVBM8FLVd
	 7/DKnwXxPWp2cyf9p8e67slXGapOro774Xf8ZJbx1nMZR9sBf7cipmb9LBUcS9yMgr
	 C6nlMNb7hp3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9D4C10F05
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170195569637.10107.2778269363192032550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0499969420a14eb86a1a7ebc731045ac0f43e1c054158a8d2a6c22b073396773
Date: Thu, 07 Dec 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701955696
