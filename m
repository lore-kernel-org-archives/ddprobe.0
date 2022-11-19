Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80F27C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA57C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668832854;
	bh=xTSKTd9vZLD6PwEe72K/pWUk4Xxf7BDxYNm5g2DZZLc=;
	h=To:Subject:From:Date:From;
	b=khwBrZ6yGDS2+sPMQTWBVbdN4pdZV/d0Babd62jCl2ztZhBmG4VA2u3GbfQqglSAL
	 UW4C1fSp3StbRfPZAVTTCsmb+es9yx8Xg2DBrJa3AauEAf3eSgENkLZdHFANKiOV4g
	 oMkbRegjYpPGFwhyYQ/cUIrO0A5YOQXxUaCrThMj3coa3Hg0zB1gnzCyTJg13VHm+3
	 2LHMpw+7PLIsPfYPvvoGG7Ao69Dqw39In3ms5+uPZR3zZ06piGKb+sqT5PpITgTM1V
	 I6uI7EdhEneTHAFqKzPS5TGwZ8nduikUyNCCxe7lwzQWfcidIEE3WupKTYIDEhqakd
	 h84bkqmnFcAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53754C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883285433.16508.17216443954523203940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab6ae838eae85f6914c1f3ee3ac0e7a599c9790858b31cbf2fdc9ad1fd45262
Date: Sat, 19 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668832854
