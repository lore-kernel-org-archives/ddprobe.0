Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62307B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722E3C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666348253;
	bh=MGnZqqxonpvlpsU1EABasjOf1xg2mzeRpvr4h/ye+z8=;
	h=To:Subject:From:Date:From;
	b=OBYHDep7Buyt5V+PCxXy17w/nPcAOGhWVOUZmIMo51s7w7YkwhstH4kHpLWeNGlwj
	 61QsRxz6nIoUvWPxXUbnlK06hojXCuhycLIQEMOiAOc2SvbQqSUd5GOwvZ9iMuHT6/
	 7lBNE6oRbysY9Fu9PZqVdHqHWoPYTvoQPowPBGUD1G08BILy0/TiYz1UMjFi8P9k9p
	 afmFzF9bcGUrzXLN92QNsiY//c0qqsa7wUInOoxWlbAE7vbxfSKaQzssayVJ1Rwvjy
	 j45tCJjcx/4WzBYeECrNWMN06m9V4RgoinZCAw7SgWqLa/4IuMgeXXLEhajiMmiW2k
	 UvvYkmaOG7Uvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55533C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634825334.23645.12611986816049361032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79dbe652ffe8894a2e8e8194878675d08d14f85f153753574bd0f53668e35f4
Date: Fri, 21 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666348253
