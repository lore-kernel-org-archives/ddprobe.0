Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46497194
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 04:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FF1C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691382788;
	bh=Br3/mCRJYsV9kkfiEKmu6r3NI/qP+OHIhFHFVLN0hMo=;
	h=To:Subject:From:Date:From;
	b=oVr1/lRlFYX/0/9pXmKoEhaBLJFdBW894zkNNeztOxhS555m0Ylif0cDt+Yt0yn5o
	 vAjALlX8RZ/jkJg3VfUN/Eo3ppHHVLqW8Wapwv7I301LVT7x7Xpe2YTj1R339BEKla
	 W8B/1GutQWz2X6e8sljxUbLXLM5B/SQ10li/yeb5l1E7HGQD93znql2gr4XjwwmW+R
	 dN/cTt4MC48pkTQdHz54ZzVjfZ+/lYA+iQfdmh6dh/YXola/84ErUeYlSVZDZUO9ir
	 0tdsUvuuGsdSPNgEMWSftYYpKdBWNefYpTJiXtna8PbixSpKl9fHbpLPNxjNXpnFdO
	 ShRyt80bw9Fkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BE1EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169138278868.16692.18407301177491257568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d196035ea0799dd482551cdd34b85ede117bafa597cec794b2dc354c4a02fa98
Date: Mon, 07 Aug 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691382788
