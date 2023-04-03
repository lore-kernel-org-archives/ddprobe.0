Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2567E
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 01:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB04C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 01:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680484565;
	bh=8zoNKJTkG3Ct2yQhNWbFisqXiIzncziRajPGBQ0hE5Q=;
	h=To:Subject:From:Date:From;
	b=BloSTo8XV8nm2XLC7YuZH1fVkQnMrPQX8UYsBdLM9SThZxXqUzyIRfBe0d411ad81
	 5STc+FdXKCvf/1K1nmpci5vBk1K/J4D51rSPejUXawBpsZp7LzftRoptrNoWOsHRGV
	 EW0yLxpxLCnHOTliWNf9aLYHrhgRRKwedCEEDITBUhhpVSurQtS8IwWu1LiTdOE7KJ
	 X06n6bSH3rmY3jmNIJwMqq6bRb2UbSJ58b7HSJLMgEMFjb65edhAkwzkvPNTWRVvtG
	 6pc5f4QX5STc5Nfe6cyfij01KPCaVzUgK9EM89uQSuwWkRsn5h8tPWtTpDVdmsrKKs
	 T9VobP7kL1NZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3BCC76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 01:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168048456577.4648.8679323047496285001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb63bb94d39f0bf23ccf83530d3eaa3732f9462162384c962ee1a478dd1cca7
Date: Mon, 03 Apr 2023 01:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680484565
