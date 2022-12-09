Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE2E2CAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906BEC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670592087;
	bh=5roX0WAxPxgF0HDJfn1xrI4GTxV6l/VP705a2ism9I8=;
	h=To:Subject:From:Date:From;
	b=R8zURbFP5WPS4l+mNBJ31ALQxgNBxwgxzan0XE6WQumm2QqzE2N56OGl1GDVLtpwN
	 6Qa8jPUqd78WK0xaZveltIt4j32RMXcvkmSl5ZRp8Soi1koc7tW0d2O+NHJOX/w4Q6
	 /bwSFkTjfcOhAC8353tYcmocs3LslK9oksw4tyJqf+Nr/6lX2BWrj6iFEhFvZZxxDF
	 CdzSKOrTddW73eKJdhLffs1C+yDD0Zd23qrOgY2DPndl/vifIITSuZHS9C7GbAHSuo
	 47x7oCT+1UVkPuCK9vp4XMglRso1EAB7hgPY56ghC2XZRLfOOgdOfyEfOR4AHV/2yI
	 BGOEwjYP9r3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E370C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059208742.23517.18003076567208225084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422a7c643800019623ae9b102fdae655c671fbf2943a204b8a12411a134206d3
Date: Fri, 09 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670592087
