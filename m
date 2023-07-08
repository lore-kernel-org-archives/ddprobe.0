Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650CF1855
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C762BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688805428;
	bh=f6GRCUpaizOSQD6/YU7DYixdNyO0+4iMrmYRkmM+pY0=;
	h=To:Subject:From:Date:From;
	b=VehW2F9Epv7WmZbXthep52HS9QVhvHXDFLW8ex6ErQaIVKoL6/Xkp7Tqtj00BN2aw
	 tpzeUuPniTo+As4g6q0+pulfGbt2QJuS0fPdMMRGkJl1r3ukQ2LoJBeygMKOOjDSsl
	 hXM2sSV4fnZhy+z2qTGXQQjWdnA3f8BM18P8MdOfFFweEXH948CSvuGjZYpp5QCDHy
	 hZb+jSeHqaUBxtIJRuF5kVd1qVq5y+aU7dGWEkwXcX8YyGpQhRscPAvWOj/iIU3JxI
	 Myb06Ghn1AcTpuIc0N2sYXqEly5K++ZwsXadE5H1IznKYf6gdJVX8nbLUONs0/5O5I
	 6sl32NnKdqo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD6EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880542868.32169.8209884306220165532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76f2700e412b764e32e45543f0a60ab9671323d1d9ca0929a6aaa8a347ec143
Date: Sat, 08 Jul 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688805428
