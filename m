Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE173C1E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72C1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688202248;
	bh=kONcVelOuz4lIrSnHCACaCp5ME8JPf/9A7O9wAz7mNs=;
	h=To:Subject:From:Date:From;
	b=AEOpE4sRQyYK2OV3iYyDQ/bkA9E065rD0rrjUgXi2q8ffiGUY0AgiJoTvL/72s9UZ
	 Y8EW78cRPNO7+dRix09XQzW9Z7fd2pp04EMKoizP8wLfDlOFEQH5W/QePVOnl9ghUY
	 7q7H9hpYeqhyzp8qVz+QeMPusiTq1JPIB9no6Vh3nBKJ1r3LOz6iSQim2EupliN3+u
	 GH4OzLMY0aTGQfawSssmfcf3zYTInR7nwqV2nZs4VvhKrMys5ouO5QtnJ3TRzWx6nQ
	 RUp5UfWxxbdpXl1qhRpUY39JLyfgrl111Tjuod1zM00B7AuSZ8SciK4DzJfvadKB5B
	 oa6Wv6rG2GS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A8EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820224869.8872.12996236886622856666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31579abafe4343c45333ffc2e4192ac560012597ecce0f3734ea3d97e052b76
Date: Sat, 01 Jul 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688202248
