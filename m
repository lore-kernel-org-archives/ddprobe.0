Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396596ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3293C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680884465;
	bh=rCBnvm8+ROCwB11GJCfux0GpP2J+1NfXyRCn06aU/WA=;
	h=To:Subject:From:Date:From;
	b=AAffLKPf7MjYiEO/ZWultZvUux3a8ipGHVwKbGcwiy4ZJlUr7tMtOW7MKXqgwBp7S
	 hEfNPgUpljySkcFBlh2u6GyIxZJB8T9k9BMaLaI8THLsTcdZeWdr+W+OoJ0d9UIdRs
	 BHetd8mXQdzBtvpyo1eZ/tglRFohADTvgxBqDucoz7TcYWbdrqHBMqafjRkRZoVQe5
	 7JxXvSRrisUPt3e014dVpGCvhPvQDsPrBgrHToxBXbxi2gah7uE6YUi029xAsGEUjv
	 WJi5bRnlKOsM3y1wA4G6zS+ZhDLx7lo0qt+NoMF+9hYBbg9vtuxPaQxF9Y85MhOBiG
	 x0P2Usswnqv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C489FC77B61
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168088446577.24627.14170235248810028886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59323dfbfb0023c60ebc109e05b2649b95ac9a624279c9183c0b5ef7663219c3
Date: Fri, 07 Apr 2023 16:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680884465
