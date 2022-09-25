Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C883F180
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7BCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664066453;
	bh=PYfQ0l8l7FW40RN9KrGY39/Fw5mIvOUe/NgJYFf0wFM=;
	h=To:Subject:From:Date:From;
	b=lPqDLQ2P2oJ1FQ+kSTbmsdmEwQ6yBPTh7Ex1XtfT1QwqF5vx6y0k8AtNMzSMirWN3
	 9wgHrkdj583L3HtjUhvX2M74jrF3s9gNVqHkipzQBn+UoK3i1wgwH2+uhPhSIihbyH
	 An3x5XKYrl5aHvexF5oBu5c/BKia+qGeyGVauMxZz5bCm+5S92DtQ3tJc8CYFppwLE
	 Jw5QVq52LFr5MIg4LQXTlvsdVy0zqKxkBuDK0taSwD15jaWIO4eZD50TMIU5Hwg+7Z
	 BD7ybPDWb1JKxnASFagUKYXgcHkd0NLmMCxiDxMVwhIdtrJQJoKE8BBuwbiK6P6wn0
	 AqMwrz0GgAJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C46C07E9D
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166406645332.32347.13541867207992467386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a71d31aaf616a4cca20cd0da0d1ce3ccb4a5f0b83b5b9e3f2e24654bc702790
Date: Sun, 25 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664066453
