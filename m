Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C7D7E
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzblf5R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836D1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701043696;
	bh=bZLPbKgv98aA75XOd1yrWsuj/SCavNpyUHrcuKHeSIE=;
	h=To:Subject:From:Date:From;
	b=Mzblf5R9MXG0qG7TZKax0aiMhTqzV3RkcGPNiCLkt8flkCVgcLApAUNoMVmeKwzb/
	 /I4uJ4wRyykZZIjcry1Oh7QrN/5jaUWUMQjt8mUy+L8EGIYMr5XH1zgtGgSCTEbjxo
	 5eOKIHSoste1rbK+pNr+tfH6ckW24/JIMRlErwQewwmh3GfZlt/hzN43bhMsbPJHwr
	 ESrDSaEtacehCtLQ7JuqeQ6ONJ+RUMwdmPpRMIOPfXix13xXh5cGJ0+CO0Yh377+kg
	 EyQl1z2v1hFD8vN3XJQrLtgpS+y2irce91yFTmcejtYrW81ZxeMi15+7iBH9hy3wKc
	 Em3eUPseMi71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627A2C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104369639.26313.6819510102601897556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659dccc227d0c19d39f096138514fb75954ee873b8fdeed50eb4966e1ab9f890
Date: Mon, 27 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701043696
