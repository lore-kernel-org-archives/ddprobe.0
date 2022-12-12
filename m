Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02051C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B32CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670817087;
	bh=lgB8ulICNetGMm9uOrqcYkb7SniuqAomeo09Y81vm6s=;
	h=To:Subject:From:Date:From;
	b=Vjn2McEsM3+5KjdXIGA1Rxd1qwspoDnEqk1+hSJfDDFyRrlR/WAW3gr7bYNAEFzqt
	 duxK8rZlmkG8Ky13maLzJMETXlE3J3WX30PR5ZLIhmsAbtC4kMf+wqdFOvqbShKaLu
	 E6R3ieYdtZZ3wcZGW5+LBCC4n5I8jDCIv5qfsTqOZICtSQQjJMK0jNXqx3mgpZqpJB
	 58LCbDfOiXe5I0irAxJtrpmBVTn0BDE5c773/p41an69BWdS57Xbb3DKW9WKtrDiJA
	 jIVgcU6UB81q3WCIIPZfFpnirQ4lbAdCv5kAVk+1NGzp/7tr2huYhX+5kvyxGlZU9X
	 2MxTzJF/Zr6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFBAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081708737.27434.14303537096179104546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea072a728526ebce6ac641811e58addc68e9027311e332ccc0cb9ca50f91fcf
Date: Mon, 12 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670817087
