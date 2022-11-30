Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B72EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F18C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669806054;
	bh=TiZHSX2OkoQiwCx9JP4R5GGLGsNDG9BhsIpxxUqwUf8=;
	h=To:Subject:From:Date:From;
	b=KBBpB42lBukZMEYXl5V1dWk7+5m71mLZeBcBqqNITUj/xHe8nT46yWXPYfXVZs4sb
	 MFkHDNO1Xbh8OA81v4tqV0bpdY73rO71QoidXc0pD4pGckn4izeNIPoe++NU8uYa6p
	 HXS9igCVKpHt1t1Pt4znD11Oc+EZwb7gkQtM9p0FvRAs0g5NFLLMLrMXKwwq4382Cf
	 4HL8pbdgho1Wd0+7zc/FyHd9jzgnO+hNoMwSR5y7+FQVlTr/4AtNTY611nNwIgYdvd
	 vEtZMU9bT8JSNLcQhhrq2Z/GYQPDemxsfbOipz1jUKiubdzEnEf59FB32kjXKbfJOE
	 wF0AogbDiUBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FFFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980605434.4018.513662351364644259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a6cd45d41e8edfb9c53b69bf822972c1183f679613248f8c642710a976c1d2
Date: Wed, 30 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669806054
