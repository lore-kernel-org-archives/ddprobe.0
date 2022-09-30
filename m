Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F911363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F183C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664504453;
	bh=BMco+D5erKYhRNKNVS2HIWKq6lJ+oQMtVykjCRtxt6U=;
	h=To:Subject:From:Date:From;
	b=GM3sK88BZu8uuCT3THiwRLfcK9+H/VghO24hZ1StJPZfJ3lGCT4KTkd69fOoqd6/4
	 V59BFj6MrjT+EER04Ze4+DPoGDT8fF2C0FbDLfEBpK4ng0BeEMmYr1nRexW9LZ8+Ud
	 htYM8aMmybkxAiLE1EicvSntLFDw3aeVOg+bnuDwkhB81N7J1uyNogK3pVkFcvyV4s
	 OCAsfqI0RwJuxwVaXqO16UTYLQKyuaECnIlo7aZUw/kujrIZqDsxVnXoRvI+rbbZ30
	 61OslE4xK23X1qOCRgpyRZMoqKVrQ10Dgb5MiOSMfkvCoiXjdNGWU+tMDYezqtZNQ6
	 yl1XwCTQGFduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60132C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450445338.27522.12857695226204381485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bff054162830c9424f3d3181e99eb65259b02033e1ca04ba1dca2c36537979f
Date: Fri, 30 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664504453
