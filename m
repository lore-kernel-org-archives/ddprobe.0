Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5172C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E8FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681387625;
	bh=pBpeRFdsisOsp9PYJqW024L4rYAHFfiANb1WXNC7WjI=;
	h=To:Subject:From:Date:From;
	b=lnzljFRAc0H6Mklz7TErjDvY2AQ+qH6EBrOYj4whOFReVLBtnuN1eNQ2AEtoKn7uC
	 1jO2tBvH+jZXI1ShstIRz5qBgVgUH6k7TVssI+nPbr6N6XBuGdO7qyKS2ChyEq+36P
	 2wJjsuD2ollv34WyUisNrw6uocPBGVR8fdXVEOaShEDVzP205cGC8TPijhxFaRO9NG
	 QZrxKZ3ORhp5V2qeoZvtufXEF2SNkboBq+U7uCoruhAFiYYjAlWc4ol6kz+gO48XJr
	 sUZtP2w85FABzSakOTbQJKWnS56kLW7c1/Ejtky76uXL1fZlNOgHRtWw6hM8mxKOvs
	 G3+3+D24Uf5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD774C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138762576.5412.1055965103693185872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc29d919c2db68ab3493fad0e81fd4f6735771f99b56b373922fb38d2b0ff9d
Date: Thu, 13 Apr 2023 12:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681387625
