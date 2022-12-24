Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFC917E2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93CD4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671886287;
	bh=xIAkE6WlqQNMejrRRYlVmQyr30BoXZRHeS2qzy+B6LY=;
	h=To:Subject:From:Date:From;
	b=crUR8vi8wlwSfmwD9Uj7OFLO5M8p6Re2ViPakeDDIVfozb5rAAZinPPr+KQq6k139
	 JwqG4GBksWXgI4Qqne/vXMx9zJ9Hym9up0z31J1BSnXeTvxDY/MWIBED+vWRkJGpWZ
	 +oOMQO0mIT46upGaOJJjsmot1BYsFiqWBvGA8RHpxoJWPPFXegA3MELu7Q4JcoCkeN
	 YpXVcwY9vprx6EyMgFnpWMjKFfns1xU5Pg5na4xlMHnquMw7aOJLEilsG+ap9MIksO
	 plTb1xeMA60LVDYq09yhM0pmo+s8Z8S7i1+UF6B1BuOr7rw6WbH9E36i8iZERYAt8m
	 uUkb0hs9cOvpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B0BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188628745.8634.10029561329054867607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619933803574a5045c572bb04679c206dce8a383bbf467fb4aaed2ecb176bc68
Date: Sat, 24 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671886287
