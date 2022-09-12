Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABD92589
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FB8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662981653;
	bh=qms+5TOFcuHxXGTiIxjL0fPzUeoCBeqBwdnJkYeHxZo=;
	h=To:Subject:From:Date:From;
	b=MQBPV4PMGWUcrLY6UpFV/MTYFK38inj7Bw4uWU6R4gmYGr/8utzsWUdMU1GyU0JUp
	 kybJ6veoUqaJRJWv5xlVrEaV12KY++LG3j+h+8VPyZdfrOxnCrpjOVf9fMQdWhuk8g
	 SAmeRq7mOaIKEJWJ/OYE8mDPnWqRTqhrdEx5gv7IoXXWB2SlM6XtL4Ro/Sf6XgFLOt
	 rEc2Pmys1CxypbuFEaMf8k/qgwZLIsUr0pZl8GMtU6MJGI3TYEoUKeda2S4/f69rhA
	 Xn4nCeRarSvTvmyaju0yS/CQCTFKP7dNM5VW1zHqPh3QC4tfOI8InyFQ7ZB+5vFY+6
	 1mh2CrXaVuz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F601ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298165331.4248.13349165010111766599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fe19add196edaecac2785f85a603f1a4d6f22870c113553fa5b1d6d228ea23
Date: Mon, 12 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662981653
