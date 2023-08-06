Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDF27F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20DDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691348588;
	bh=R9cK6EE1Hj+vQ0vV+6EihUvtYIgu8A6vl6hGDvuw/vU=;
	h=To:Subject:From:Date:From;
	b=RwdRXGR8tMndpvO4CU25PXi2GLz8F/Pqv06E8ojbvuAn+DlBRWe5SAOVgPOTVnaQt
	 EitmnyXpn0k4SfC+6xN00DXC/Kj3dw4lH8aGSxMlc6ZwnmVHHlMgcLideMhuXC7uLR
	 +lx916X54ZMiiYBNbF4baY04oezxbRtHDiZsnWWitZ8Ab64OkTJG2iZBG8If5qwN50
	 iJqUErRLMUh9lpjn57baCapHnEn22Bwjab7LBdc1rkDcVI1J1SS5Q/LqIYg4k7O+h/
	 Pg7DUJV/oXyiHTN+p60aZlXkZktbmmrE6zarI9dq4j+kH6s/nfseQl464LUiLMFxU7
	 1D83vimmISfYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B119AC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169134858869.32182.7622816422556751066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093e912db58893b4eb1af29284e8c8fd1d5cc28f29dd880514890b2efa880d8c
Date: Sun, 06 Aug 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691348588
