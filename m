Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618487C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53A9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690249928;
	bh=r1YX1sDltXHhpMljWrgE/1f1Acl+8dtLYjbRtI3Fohk=;
	h=To:Subject:From:Date:From;
	b=biJNp5sj26LcV8it6llvr6NjFYrHSwEpYFtgoZdxq367YjWkqM9xUgLZjYmNM/SKW
	 HteAHBNGNNa1Do4gZLR8uU5Ar4wRJ2Du8QQ5ADf6LfNKVY8rMGN7DuV1906JFtgKCk
	 YxCOl76PHzYK90MBLYDin9z7kroOfWHbCERVJRTWTszUoQI/Yar1RQOC4XUdHPoLj0
	 NJUGZZ1zcqE5Oz4Ug23/DaxNj34D3uUNcRaoHJSFgbWkfLCXQCVAPQOjnMSKiolo0z
	 Ch8r1vBx+eQwGuXvduYtTuJdi05kaSQLWR0pDyMCIe+Iti14psr2E6N11qTcHuKDos
	 95curEhNg6Qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B2EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 01:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169024992870.4503.15223764560610074073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dd69504c89dc85253a648c45bafd3efb48f83cc240303484ad6608f5f4e251
Date: Tue, 25 Jul 2023 01:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690249928
