Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73358256A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18598C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681064466;
	bh=Ki1Q/SFHxCYwhOC794MqfL5pL3bz6tbTiXGIn4GLNag=;
	h=To:Subject:From:Date:From;
	b=PQrgNaEiutdqrw9w7+s8VR2heM09KxOEXYXDkznVrZ21Ek18dpHT7fV0kFrQQcuFv
	 1NnSzYncY5pImUH49MeDwkZKjdNZ2zB9AGjIA4QiRusScOqrmcNHNq9KNq6wCH+/EE
	 lchahf6rUGZwSBDfyUjltcsKMxcTDQGe7BfeVw5nXR6QOYcriV4aRGzI3DhsT6D5a1
	 m6yALmZ+DB3t+9iL58bKchcEHo1xkMrIOEop2PFVeyPHgvhQJBImmJDxE8gw7St8d6
	 AXc7KfqCy6EO45K4KzAoq1+RAl5i03YRcFbeyuWshNz55yRrKyLmhObepffiuOeGhI
	 vYB9lyM5+PWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE1D9C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 18:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168106446589.31448.15580148577061975069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e803a709f4066a0db6247f54f387ad6d3b564824f620b0beab5371c4dad67a2
Date: Sun, 09 Apr 2023 18:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681064465
