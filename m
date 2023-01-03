Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03EF320E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9AFC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672747287;
	bh=h4iNdrvy41DoM3eHXwzQFzZPpM3mOr+xecfSlfkyFNI=;
	h=To:Subject:From:Date:From;
	b=pIgAQzK5v8wdmto291Pa2cQrt0Fl/C2M09L+Uic7oWxp578jy3DWa/mgqBh2hnMXJ
	 D7gUbiFfX/eBOjafdR/GWC8Xbr6q/IYqe/B32F/cPRq6KWUrYQSpF0V9nq04MUDpaN
	 b2PrlLFzB0ppTkilhdYPM+h2IGUpoZUMTG4XtOWUl7yHAzccjNnhDTJiZ3I6crJ98l
	 PRUDgCgX7K9FWLuz8ZktGJ4ku0yzUcTzLpwgwBn/xzBZfdAr050O6VrZTJeKXKXDzj
	 IM8U2ki48YQ2PK05XTmjOpSWZiekkFoTTy4WPxtACZuvF8l0DjFhaCvKpX6uQKwLhY
	 hZ4O8hvwnut4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7453AC46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274728746.402.18240932771769264436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4999909f9d01a8d2a31aff7fe0ed00ea12f332f43d6c87f50e52a250adc8cc49
Date: Tue, 03 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672747287
