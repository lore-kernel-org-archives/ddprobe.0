Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55A2F2C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0198FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679686866;
	bh=8o55JIAhqJ9Jha4SyzbkJpIyvjAps1UdJ+8EurOQ0Xc=;
	h=To:Subject:From:Date:From;
	b=Kp6dwlfFqRuzzY9W7UdkOQ+l3x4m5R4hTaQKmMYoOT2Zh4szB/IelAMienYJ5tYy+
	 yxaopsX+m2DJ+A6yW2vCRqXQwJsteMGz+zAJhS9jejvdPQGuWxYonnBNrnh24yVxcj
	 8DIuPWH6po7SoK2K/h0zL7z7w9sIo43Ww7ZgZR4dv4BviitNtTIdZ8fhS0L7ZTYyWF
	 6+dBsxMLjzBGnf/906g262aprGJnGtmXKokqhb9gEYPCDaUc1JGDtMJChxfH0U69U8
	 e5txWZEaR4MvXmtRu9+Dv9w0T/sesfUaUyKKu5A4XKKbTSt8hqCoz1hFDWDpmeZTRo
	 b1ide5Q+ymR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F4DC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167968686586.20987.10082221994910347554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88e1c7ca11ec78b5accc0a38158e6eebd1ba44eea9550ef7cc914c3990076f4
Date: Fri, 24 Mar 2023 19:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679686865
