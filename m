Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348B05CBC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 07:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A3CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689060428;
	bh=TRSOlPVK/js02p77RyGu6jMFfg/LycaEevT5TplM3ZU=;
	h=To:Subject:From:Date:From;
	b=FsjJZb/ha+twM4HRmAbJWZsAWJ1KbqxXogynyuZWwfPnwY9AnIXfovnbRhRqc5nYf
	 1puPEp0L8p1ZR+Z59Aum02rba0S92ctdgOYNDVPakV0Sifd3xTJArPkXItCICnUBQ6
	 mkfCbj8N5an2CIQT9l5k2Iicb11qpDY5OgN6stc4i+K+rPBBYOHfmZQOIGtZi1PbAk
	 Snr/5RuuuQ/wtAYDEkppTazEXX7hFG6ntbwUVvblCozw/71xqEmgYEIbrWV2lxSEM/
	 GKeeS3EBtckVNRy8NUQLLfmyKnWanMs0S2fVQpwp5UzjKZNSRELZ59EfIvfMl9Xv8N
	 lKUVn+DiDu3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FCDEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906042868.21131.15797851320448078108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddbbe728d93fa3d71400d3000467e1fc33a43948db1c20c6fb207cdd5f589bb
Date: Tue, 11 Jul 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689060428
