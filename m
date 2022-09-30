Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B3E256A
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D775C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664539253;
	bh=LtISC2/KDlPxZgvkQfy7MAT6p0kTTlQOgAipn7uv6bo=;
	h=To:Subject:From:Date:From;
	b=KuhE/qvsMj+0JNcVk5KIDVxG10GA7x1UhIb40eZ5AlEMEW3OVo49J7vyVmkE9FboV
	 1/MTR4Qh516l2Poyp2WoHQi7H0H3MSOrTXHhJqq5MkpO8AkeyyYnd8XnJvmzmYAugo
	 194LGl74D8Z+itdpqbuOIE5bZLTzbau1739xuGgMYRE8JPOijfhtmXT6B+ADN9ernw
	 8sYr6I6jqM+dj4qahZQGlahy4dW/8hzYEJZ+zX+i/fWBi7UasF+yC9cHGxrak1/8/V
	 uUikMNO3mHdXZl9oFXBGseD5ri9Sl+gNLocL5oNHjjIZb/Ur2fnw+gSlm7leYudO45
	 emgNnBao6y/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507C6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453925332.20814.7395773606974718140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8742e9b45170b6d93b9c4f2c7bbd9c1ab658e9a6b006cbb33610acca1ea791b0
Date: Fri, 30 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664539253
