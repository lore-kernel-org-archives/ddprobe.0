Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A1123A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D40C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666156853;
	bh=+HEA17cWRSGLN7M8+7rY4jrevqT3cbNudzoBA9KNjig=;
	h=To:Subject:From:Date:From;
	b=WHLILLyDtKgsS7KOqZ3mWKvc5EdnvVwqG4katXL0ZJPiw5Ks0sB6tAQapmM7SvO+n
	 /h/kfDFF5XAHhpN72rsJNlC+Rz7UTj30NqDaqZimuk0PmZeJ1xXUaUDVWSh7Jpzzgi
	 yJNUnbmaoDPOXmB5TeEV+zehV1Vb2wahkQ6uESZGcyLXN1XjJqkyDIoijwF528I1/t
	 cdQRwSF8mw85bJwDKxTd94LY8r6c9aLNNtzRNPhkNOjh+SiD625UHbAEtru9cGQin1
	 8oulSJfL22hMzDVQF6Lf2GeulAuODXK8gqQmUsFzxWa82sA7Prh+jeYdkf8TmHXA0B
	 fXw+0PAZ1t0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D89C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615685334.25694.11121193572896370928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d2772e47c500175e30cbdba056f348c5c4d48c3b03d6fa714d9e01a7cf0f03
Date: Wed, 19 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666156853
