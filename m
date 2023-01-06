Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ADE6FB4
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88573C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673016687;
	bh=mF0XnicCyPCPF3+yOw21V/jBAHHOm2P8wUn6Fu0wMfM=;
	h=To:Subject:From:Date:From;
	b=KtHpTo5GAULrJPA23CyZ7kyCWL5XgIfQbLA5uw3AdrlktJ17LNCOppA2mMRjpevzc
	 cV+aHfAF3B/gDA0i6h4QQz6Y79N+2/wkrNU4ksZe/IdEDLsWWAbUxqJ5Fe/q+DHh/1
	 qncqzmEF4KxLG9winlrJikLGxjRngzBeky+jx+YCxhLWtSScWZOvfaZk8spXbmpyQ2
	 5Ba03UXWLRGtDy1kZWyoncpz3+GBGSyAu0XgfM3agu5wlFQNx7d7sfzwGN+cKt2YO+
	 x+0sJZkzRzFQZ5/6pNzaSWzBsvQOk4kVdZPWTXS1nndAgYRo9OB56ZHx7t5TETk1Ad
	 HL0lKnv5qA1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6899FC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301668741.23820.18301295837875419207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98533b26d4db86c6abbe66fd9c2bb87c9af58831ad39ef72f82dbd7e887e35a0
Date: Fri, 06 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673016687
