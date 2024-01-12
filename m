Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E0022601
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y84iqT0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B9CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705081096;
	bh=BItDxkPtiM/7dBYlcSbidr2k6WHOKSv6Y2C1u99XWQM=;
	h=To:Subject:From:Date:From;
	b=Y84iqT0sXTLk/xFK0Tzx29UmN160IhfMWq8y7Vlc27kljRMvP9hH/4hMmqTZ1Xhjd
	 PiHNp/7fAIOEepllxhUJn/qluWgS1hrBC1kEF8GWYmONMF26+LZjQvCwR38k18StnQ
	 D0AmCu2PY/TBzlPsvyElCSosmoNDxXlK8AHr7Y9Z7B50oY1Oq71e+1700i2R6cDhxW
	 MLkS9U4Am6QQ5yhvevn6KdhQmQZnoMeq4+oMzXU4RoBgG2n12u18jnyqO1fIBU4hIe
	 xI6+lF6vilwA9CxJtiowwGxegCiyJkoapZ5hn4L2Ngq3kXl8QKtCyL4DWFUldjdcNx
	 gDAIHyecyTKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC77C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508109643.6026.15769404220727855149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d868d47002988f37961430d8f183aec9141205680248ec47f304ad921f9d74
Date: Fri, 12 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705081096
