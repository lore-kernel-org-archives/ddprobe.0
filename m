Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FDD10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790A0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670725287;
	bh=dJvnQorA1YQRJqYt+nmtyLP34qYzNTGFJEqdVYgDUQI=;
	h=To:Subject:From:Date:From;
	b=kMLnVtp7Hey8ckAAZNWtI1SH0DTqY2bdFu7GY8a6mw3orACabjSSlA0YmQnnc3qQd
	 MzLztsyI2FmVITwOWpF1WKSYCZI07RuvD3jPwg8LEXLGNxjoVGYItlu+4cZa5uwQov
	 a2Ryf1yKpWRfVlF3LNdS5BZMtDiRiZ4s6FWK76Wm2tKKukV2totar1yrwnf90o3234
	 xr8Qb/9JILi7NYX7aTFNV7+IwSsugWgPea7PyaLkW6BR7e8JI8+ltCrhnJcRHUqC5L
	 jHmNVw0QsuKCdtzGEC7ftmbge4kCJ4Vsc87x+aetC3zp1q94q/cXcqNtUUBe0Fw89h
	 h56ZkdIizvfIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C997C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072528737.3657.10836561780234018468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db541884d787ed5b028a314439c069955367aa8abf090ae90204895e6d8e1ec1
Date: Sun, 11 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670725287
