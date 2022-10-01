Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86B228EB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C98BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664628053;
	bh=havghcS2G8YYKmWB/Yd38ZOe/2EJYEOU6tUO3vGK3As=;
	h=To:Subject:From:Date:From;
	b=kEXzdPxKftsebCPRiyxXYibdEz8yzYBABTkSKkYQGwB3yi6Nq67LZKwHDHB62vHyF
	 7YP6tnG0n/FDIoyw4NkUpSrm+LfgwujCMW0JWhIWVyph9gBLz1xcnc4aqRvS+tqv5d
	 VF6p8BjxIsstqOdMAkXI9i4sOIEGou760WBKUBsmJOyFx/2Urk+ByxXer/J2BB6j3Y
	 95cYnEIZCRz4hT5ng+npyEKr02uNLNHYuX7lO7GzlVORUPMuqTN8l7RYx5vWV9K8du
	 m3NAUO896INeXjCErWupBJxuNy5f3WKmdR2WEJHld7Hvs81njbGa+Fu39YeeScpFzA
	 YlnqQ2vzoy6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53665C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462805333.8324.12682302699325011899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05ce37132b5681422bffb498594b32e3673d6508e7ae10f0b8ada4de95ab7ef
Date: Sat, 01 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664628053
