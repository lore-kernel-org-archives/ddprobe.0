Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427CB392
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 02:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91B6C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691374988;
	bh=+JRF5ceMR/+WjPIQ3Scp5TUubl7G+dQ39U4d3sk/LPY=;
	h=To:Subject:From:Date:From;
	b=lpnDWLYdbdC2rSDapieNKIwKtwE0+x+PWH1REemnYSKgOQEhipdKj6xOJIzVHSqG9
	 tVhgHW8LKdFbEXda8KMUDr6Krv4XcmM6K6p8pN5gtAkNGJgJS8dyw5XFVYcduRME1x
	 9rZ7e3qAYGUxdySOpFWiUplqyK19sNuDhgLvIkikEgZFGoQkU8Y9u5H5M52mfoet9P
	 SBkgK0d3JaMCYYGxXFlRJTDAwpySvX9RvK4rUldHhVDhqocWLxi4Uw7pPYGL5X2FNj
	 YAAU939qgcA6KGWXUDnZGwm2hM7EptE0imC+ZVlefNb+sDWnV6lcUwjbzvOmVtBn8M
	 YtYPbSxAVfaLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD063C0015E
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169137498869.19559.1587070053527218570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffdcb2ed36ffe7fa679d609db1f8dbcb208c2fc2337a9d8d50503608ed0fee4
Date: Mon, 07 Aug 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691374988
