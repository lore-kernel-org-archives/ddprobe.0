Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A14D7F9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpFuJGra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D17C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700138296;
	bh=HvRidI5dpYyscG5DMscY//1jnj9gs8CfjPC7eJEuERU=;
	h=To:Subject:From:Date:From;
	b=kpFuJGraiEm4jQYBK+qL+m8I2Mv4MCD3s5227cSNEqjx8yAcavAYGD9v90sURBssD
	 bZGtHPubClbi8DIzw0NXMtYBnhIc5oqeViJj6ZPSe+k5bsIlZBVUZs94TCnJq1TuHH
	 ivhtscAJ47B2C07liDvAvkiw2EzKScOuVgENxCbKO1aqJYlDTA0+2KwOroMEUKslDo
	 poWVjqCWFxIgdib34ynZuVW1N8/KT2JU0O25WIrXQzDONIQCvC8oQ6Zdx/03zq4faS
	 f/aWJq+wvkPglkmW2zsSYFJSHluUOWlWxBXUDWPAyNiTT+cpSARBjcdsyLOesruqhc
	 oLUp8VmorZ+EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7554BC197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013829645.5467.14363800793460516174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b671963bd64c8b4a054ff246adb8fca76d53ef3fa34baa60e4e779273ef842
Date: Thu, 16 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700138296
