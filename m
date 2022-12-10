Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D821C6FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F070C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670715087;
	bh=z/ajLefMO5x9DssiDpvnInDW4GdGlS96YDAY2Bixu04=;
	h=To:Subject:From:Date:From;
	b=nMI/xV6RcEGGEZNglFFOX9x5KQeQQxgRFcbomJalWwU22+jUel91bBmUTfdXNmaRO
	 YA52PGb/7vaaXGHEwDNgo1s3mzqsEWTebBTXbcHMe/a6NvlC+f6uzRt6KmJgm4kdfx
	 Tpx4veGaJ39d4jv/LduQ2EKcUF7Ghu9yNI/ibwfUxEh/yCpLPzW+W+Ra2Vrl5knGlR
	 1P1rdVJiWWe3/b2ia9TkS5RPx5sN2umPCDw3HQp9RFLWtptzkBLwpqvRupbzlFHQ4Z
	 m7tmZ7NzWLj4VNEdWFivye9fNji1jDsoU01pIz4IwwsVmHmnzszZsk8SYTPYrEC6q0
	 ldTLiVOdb/0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617F2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071508739.1307.16273371558585280564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3e82da891ffe29fae034cb79b141523747df305c4a685c65a14f26eb35446c
Date: Sat, 10 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670715087
