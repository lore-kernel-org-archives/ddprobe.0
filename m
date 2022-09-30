Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E3F5A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7244AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664563253;
	bh=CigsD5envw6H7nu5A89np7d/PYzDzOd6f0nrU+UmhuY=;
	h=To:Subject:From:Date:From;
	b=LPAC6KTIiAvWprxhjmElHgsPpLp3iV4v+d2PVp69xKwf71r9s5b3i8275vbRzzk59
	 OzBLUU+Rw71q//K2dQbVmuMrdIK4MjZTBzlf7wz2oTmpceBHPabHYufZSRobzlMElZ
	 4waDmaP1yM66tMx71snxKnQJomJOBK6H3yphrJWFsknv/q6BalSzzF8/8eCHvJVWAs
	 qLJS2VAtqaQq0KvAYvDP9SIYcVV7FrL219FymbJ5hjpr6KHc+3EZkNk+BDWxuQTr18
	 YeWf4pV6BiK7VoLJ3HKQbz/u8X8mCxOQrPm1XyUbuXPbB3ofIpFoSBy+D5nvQipeJK
	 WevS2SSIxqnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52180C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456325332.3597.14497254017441035006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5a6180b7ece563bb31ba89c8925cf724bee29241f8d8945bf53fc1523c8262
Date: Fri, 30 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664563253
