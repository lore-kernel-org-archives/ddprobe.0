Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352AC395
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10B1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684465685;
	bh=rmu/b+0OxI8dIlnNlFJVawpIQ0pcyhiatGeMSHgYCU4=;
	h=To:Subject:From:Date:From;
	b=plU6o7D30qNqs4GeOPRzsm5yJ0E4J/6MgUgtrx1dqjXmn0Rs6lWZ0IiwC3pgKVIj6
	 xsKbDdghF4UuTv153EwAVYhDFfUFyIFgCo+rv6KRZv0VvAY0iZ+pP+yTUXWTHkveYZ
	 Z3H+VTUdZCzllHHnj94HomeondLKe4nfaaa6+nROpxsiI5LYH8UmG5RjA5fdo3wMdD
	 yOHFoMkvd4UjetK7NAfXOn17m6novddXel0vZtZ4G16xA2+Y+SM/J+Zyp85h4iDkZJ
	 nzce0AHImayF06oVGNXhLX0oHfMJ+GS3+xT708bELTP57v2tUIXmRW1efuZxd3p1+H
	 /v6HUXBJPKHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F6AC77B7D
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168446568578.14699.4217669733104271096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8f99221817794b89c0b310447ad4c38c3a16be786163dd5f867ee482833589
Date: Fri, 19 May 2023 03:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684465685
