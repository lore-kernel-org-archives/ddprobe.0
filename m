Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503762566
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF22FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683401286;
	bh=xN8sqh4T4956gRWPW4ZgQo3UFNXsZt8GxZgd7zXBbdQ=;
	h=To:Subject:From:Date:From;
	b=ZdlTeDh7KRhV8C2vf/LFSnWMIku2SlzeZPDK2mZk0SWV59cDw/YUWzluqpBbZfZCd
	 0vXJfBUTR2Mf/pIEyyE4dp4155SJKCBhbQU3nyGQ//H/HPoMThLEbpVcLwU7+3naft
	 NTgfAkJNKBT0zhK353tXiAdzZM+XJz4B9PCfoUrxUbJa+QysWttziXofPELwxXohct
	 PjeGgmwJtMW8DRBQ6pSSzxx0Z+TtmuqqORM5Qc78/SDOtkw5QmO3zEJb3Chp2lpqCf
	 7G7Gb0C66FAKIRJSUyhKZAejSOC0DErV+cNl+m0+KPCPhXQWhDSKz+dRayFIufq7Rj
	 rWBEaBroG+uLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB42DC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340128581.29509.17964575618007145131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3780fc219c6a411e668cca93d2d19ce3a44a578f905171ba96de064be3c1fc78
Date: Sat, 06 May 2023 19:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683401285
