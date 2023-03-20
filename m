Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421071846
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8587C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679306825;
	bh=+HvirGPTw4NX7Ve5NCnYS3dILaq4cYrEPd2vsU4duKA=;
	h=To:Subject:From:Date:From;
	b=jEyjU9Tca6mlEv4FW7BKA2R7xfdV+E422dUheWBtclPGrpdwx1E57xt9pSpMGjpOi
	 BcH0Q2KPSldMXI1ijnrkwcy+olyjzuzW7Gng89WVZAhvaqe5rKnohzfKe0DjsQVvpF
	 /35/MKRkGElM8O+ue2tR5U21NEAoQdnCw/hr7qAGFRmzjndKyp2+4aJi/GFrl659Lq
	 2szbgA8PS8HIiXlMgNGIDpqj3HgNC3NPCoK4WxXh0vmqxwM0QkkhtCeylykWqnOXLQ
	 xu0hrysj8DWyeq1/U+OfRum4XrhSZdxNGKdGtNgie4hyfAw63IwpQm1h7gwDbUH9q8
	 qq88NeC4BZI+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3FEC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930682582.2265.9101503013958984840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456fba12f0fb858f52e1fd461254437e2621f1611b8c498f76ebc158194c29e9
Date: Mon, 20 Mar 2023 10:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679306825
