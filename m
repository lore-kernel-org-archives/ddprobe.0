Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE794A2D
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704CFC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662738653;
	bh=FQZKWcahegewxl4ak5YGeoQtkl/WoTrqnRwPmMsMAQg=;
	h=To:Subject:From:Date:From;
	b=qek2f5drj+aw9keQIsweAm7xlEhATt3PqWhuch0iSZN9G2u1bjRZjtB9e8HaObwmG
	 pAfxZkNG8ZD4jAx9JYQq+3gKSpfwxLR8UB+ofj84BBAtClmGq3PIeyJdcaWQEFUAAr
	 p74X3c5I1cby4cb3VSKfxcBpskw0suLu5KpN4pCrQcMApRB9++dMLrhfynpSWTpRMo
	 J+h9cJGFwBd2LlHkjBpr2XvHJ2tlrZ4EY9U1DaKnvqalHifjFWEfyTdAzZsMq8+sqb
	 XhOuoaWpf+QIa/WxkHJhDYfe8KEYtbyrrYbylAlugOKFsr55LbEQfKNALo+/jWIEzN
	 cg2FxCG8PDmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5746EECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273865334.25469.4574462927742220958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5046d9c55784e0df9b0880794ecf9efe6f5f02b820904a1b20d844a7865dad37
Date: Fri, 09 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662738653
