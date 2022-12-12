Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9161FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92DB8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670823087;
	bh=42HeZGX3lFXE+sPQW5A01YSaL3P51a8oM+HzjxJJ5/Q=;
	h=To:Subject:From:Date:From;
	b=bBNI6+AQQlOhx+PfJFwa1UuZF71fVBNCf+VFUGHt2vZb/tD0Arxz5/i2BEtMbG/61
	 APX3tNKT4NzODw1SMvAWpHcAXDg+yUEzSExDNHcXxbmaebawCPbD9yHRY0NVYmoZwh
	 Y4T6+FjwT+K2WD7E0A+/n2lsdyBm2eqoZN3GATE9NMYUAWLvnoiYHA3+dnz4OK5mHf
	 6zkGemlsGUkhTBtxxhHeogDjxnOzZUxFb7aSh3WTCv83thBkFFpko7o7Z6RozCqgY5
	 s6sm/DzYKVCV7S0SVCHdIggXPRRg8ICi95/SO0flnz2ZfRC8qfYNYq43F44eIepM64
	 Rqz75d4aGcHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AEFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082308739.18865.5264597019992323057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7635e8047c5c80584e3b5b602dc7dfb0357f0fd88f2a6f65afc8c22b53ebecd
Date: Mon, 12 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670823087
