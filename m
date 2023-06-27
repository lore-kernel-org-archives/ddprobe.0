Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C89E1FB1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9E7C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687845788;
	bh=UEii2PedvHdMJ7fd8JYIS+Bzm8qzPX3eURHVcl/rMaY=;
	h=To:Subject:From:Date:From;
	b=AsPGQR/liXzbJoHLnJO/6tKmeS3RRSjvfkdcuZmTC8EtALtm8kRKBuG1D3y6vWAVh
	 9IKRSKOjF74Ov/xp8gPF6jglrZHTSTRfPu0ioloPTOq6rMlvTwbqDBSzTcpqyALl94
	 QUT+HD57YPWcYzerOawBAKvT3HgT0g4WflOk8gQtqxP+3IU2Vn/s78LzGPzAVOvvh+
	 tEJUW5x+40/yDIWsoIoSlm//ihaaYBznzilrnPMtolVBWwdhWwOispCFl5bcfQX4Bs
	 fGJU/D3Y1BGMZFNMTSx5kW94zly2Z1g3M/VEwJc71yAS/zPqP9+1dcK63prg7PXZHJ
	 TC40nr+J8dsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83C4EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784578874.31999.9914007105712221083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466a9067316b0b94c24b8d9d3b9f31e573631e90c2c6edba033a9114fbd684c3
Date: Tue, 27 Jun 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687845788
