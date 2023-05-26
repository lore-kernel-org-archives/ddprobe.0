Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1B1361
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09755C433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685077506;
	bh=NSyv0tTj8/mFNR6wr6+mQErBwFbizT0l0NBByOWGZtE=;
	h=To:Subject:From:Date:From;
	b=pxmbDOWsUOaFFkZj9qglu1SGIM9iZnyg2VvWS7OWP8WCuyf/XROpwc7TikbrC3W+8
	 +Dh3JpQljuBuij+/W1mcy8+pX+KRvHl3Jw/iPDegClYX5hIUo1Q3LiKh4FTe0Q8hHz
	 k/GuMIZ3wdLnCXBip5tnLZI6YYYJLQtfy8uqRC34zlsoQRNLwHd3wOxWP5ZSm8XFe+
	 mkc0L74BAq33bV/M9pXdMXObLO18RvGNT7ntznyKi3I3kTi+88Hk7TEhTGMOg3ETWk
	 1tr3kWgiiV46bmlAfRmae9d9+iPpEbB380n4z/b6Wqc3VCKKmXS+elTz4Lv7sAP9u8
	 V2ZvLBQZ1vCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE5EAC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168507750586.19399.12966041922420952415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eab77c7e8a98ca88bd2efa698cbbe5b6a697c65c4f2a89ec06fd112deeb45d0
Date: Fri, 26 May 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685077505
