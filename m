Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E414F1103
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90E77C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673001087;
	bh=4MWstmdE8T10vuhxusUey6oZMoY3OTxiOttkLkrdbIQ=;
	h=To:Subject:From:Date:From;
	b=lYsmER1JdpFdOLoBcvhxjWiQR0h5xJE5QGrwF2AshR7152SD3+odj71qa+7FPHejs
	 t+yx+M3r+j5mF5tqu3Yaf/JhfuQtgDHjfGH2MY02VIbfjxwDRnrw2HANHAl5S4nQBk
	 /SmNLxXBJUKxPkZj8W881bHgj0nbhyh3tC43TgyM3PZIot3gjaXF8dLDts8YDI6DvO
	 31MejGlyH/RfcYgj6ncIjFb9EH9z7OT+tSx1izOJPdZNL7tvIgPclDS7sY7Vu/kuad
	 rBeeci7Ydi3kpLJ8Y1hrafBjIjXZSYNNQsUzf9d/9Ovpq6KvXVYPC7Vi3D5Lq1zlvo
	 4EEfNM7RS3ZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F91C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300108740.15495.10246883156942649077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b419a53ae40894a7677dabcaf61085fa4a3555a908648d53c1b1e679599604d5
Date: Fri, 06 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673001087
