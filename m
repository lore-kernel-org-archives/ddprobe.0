Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D471100
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E93C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688503568;
	bh=nRTjt5YgV6pOgr+csJ5MsM80td6bMZTvBc0ALPUfTo8=;
	h=To:Subject:From:Date:From;
	b=BhOudbYgj7UFzl1EHttk88wAlAuFxCQNv8pJLhv0WDzlMjS/L44evM88zPaUfBGB4
	 8GxlEttpPN97/rULgMR4oQ+HMq4LybOOlnWOPVYKF7rTTkogvHiSBHqCv14hxARXCX
	 x/dwzdigrHBYP98vaZNxKqQ8t3uil1LWg9mTpepRKdI8fvvpR0L01r/ZLJh+T37Bwk
	 HE6Lix//TTqTVRYvkE0T8DqWfiFk9xEObU3h8Xw1e69tRAlwNg4h8fiWusPW0unPBN
	 jymxHeWxUkhotKxI9y/ndgkMaFIkOkdyPOI53hx93SkOXFMl86tErgj6m/tqyV/JNP
	 TQ0CfDlmo7CHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE297EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850356877.17747.1599980907879905938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601320dbe1a926ed756f98ff15a3691910cfa7875354960ca9de664daa0142f0
Date: Tue, 04 Jul 2023 20:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688503568
