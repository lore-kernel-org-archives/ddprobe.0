Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63309BE7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB34C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688729828;
	bh=V/aV97E/PNQKmharhjk0kzqlMGkhK3WVBw6BW5i/qjc=;
	h=To:Subject:From:Date:From;
	b=JmeF8EIdv/zcVSqly0S+pS/dq6B20+WfPdMc/EH1EJqd4E2mCHPJeh0OHmO8GAm47
	 Gmwqc/Ff9YtTXdZP9SLdgdjfm7HqAEyVXhSf98KEy8hlNFZ4sZz1HBB4Mrjcc/rr3J
	 0jNftBTwE3HUbmusXgjNgiurkPWi2aXqHyoOAHxwlMyWzubI2U4+XCvrt/mnevMBJ6
	 3S7+U8wXsXpTtyXC5LiLb73N1Y4UxH5RQ06QnYMMwZ9UhDygZQPtQG8qafL/1qIqkx
	 cEJLUkzNpDaF78q+Icv1KAOHuaBUbc1N23bAgcKFAn//v05F6sGAMHS7QfvQjFLu7E
	 aPcFcVpDsz7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF481EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872982877.13028.17292112211107867584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d5db56541fdd6023760af7fef20d29c13fb1cbc366a6e2f160b559ce5696b4
Date: Fri, 07 Jul 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688729828
