Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B3063D
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67A2C433C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696297568;
	bh=qH6W7ZZ+wWxcLXAuTuPuoMY81WHLHKxrGzf8iNTRPUw=;
	h=To:Subject:From:Date:From;
	b=mJmGrU8F3cCZESR0wYkIRqc6oGm/ItaY2gNo5+2UmGwcCIhXdoYfvKYM6uFpDQWPY
	 H3yayEsuyuomMkgv5giDUARlF75iO13OEqj+5C8d5pQpinL4jivOJBqzcvBvYLpOJ+
	 4x6i2fDyCblRQmlXeUWi3sXHhDS9NghexATTlqLtwc3VigXzdBPS8/C97QiN2dgiA6
	 i7viL2hijqNqI8TiLFIOVpum0mKgCHhK5JOkHFMvM2GGZlYX3YWF0a9vG5yLqgemBP
	 2HKjQUvEZ/pn0U21B7BpnThh7DcVER/X/EcC4sngqpOaQ+/9nD/13QYDr1A2HTkIay
	 lh5jrGzH48x2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB1AE776ED
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169629756869.7848.18144854207351645659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9af50d849a3c7c1f4a05c82365faac5993088612a300f35cacf51cb99bcb464
Date: Tue, 03 Oct 2023 01:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696297568
