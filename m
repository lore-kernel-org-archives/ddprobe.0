Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11FA7E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826A8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671358287;
	bh=U/yKFspBNy+YIPUHONMzIzS3F6hIxmPTuLQBMJPswec=;
	h=To:Subject:From:Date:From;
	b=TS3fqCE0KyQQ9I+hFRDwQu23RJw/Q1HmcN3f8GB087I4FQRkfN5XoCDoiXexZ8U3B
	 HWd7qWBEPdoDHEiUEC5WmxpQWkegR2i0Wvcl1m1WWpXDTp8uB37SCrjGpO+i9//i26
	 LcXpihTuiUwb0QGlWQeESj9/rGFNJ3BZ4fC9yXUWFp114ywPsDMTk37vOCjyCij+xT
	 P9rWYPoT4XbcWOGI8/Qbe1yXDfJIZWS6pF0QB/cnM1/Q2ayheZavNmkfxOWaX4VYN0
	 3rKMsZekp+a5CplUw434tLTQYr2xzlt/sxVPOnK/JVlLqT+QHAuEntJUM6JHA8bFsf
	 +iZbIW1EJYEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65248C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135828740.23673.14598729684799484458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741f3864d91a17578cb9442e478f411f6559800ee0d406744e965c911138df8a
Date: Sun, 18 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671358287
