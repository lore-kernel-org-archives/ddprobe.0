Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9F663E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94E8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688193248;
	bh=vBUMqlpYyvyTagSJtAcCyDSYUbAdG6eh8aGlnPSwkRE=;
	h=To:Subject:From:Date:From;
	b=DajyohUZmGxEzS3lHNFc0Q1eLxgjb5PHgLFjIG/kiU2vMKM5S4neoNwjU1rZMIu2v
	 xiZ4Ld82AylYQsq99sRH6glGuTqD+vBHUuPFxnl92Datllv5r84uqDFGlA4MlFp+YT
	 G1wNbJvQIK1uMQwJkuq3FM6eCERFFW0VQx7Fd0MVtbwILtiWduTAL8tcqQ9JR/bkgy
	 QPdX4EU7pStcbde/ESSxzAHkIKkhNNMm96us2+QGi8osg6/KE9KGI8OQy0QqJ3ngo0
	 qZAMQTDFvTVdLfY/3/UaVOBA2YsGdm3mLCS06c7YIivfH6qMoo3pNmdaru+vaWG2Gc
	 PWlhtW+d9dZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD89EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168819324870.337.12245322022702860823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dd593ef7e0753302b9fc75d7b120444f14a8b55e88cf74e9cfc93a1318039b
Date: Sat, 01 Jul 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688193248
