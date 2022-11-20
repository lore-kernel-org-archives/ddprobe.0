Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83477EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73725C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668939054;
	bh=1NDP8AYOOuol1M55IDpL3JpEfxyy+BDXbLN752b0DnE=;
	h=To:Subject:From:Date:From;
	b=ZJHjV18BJJYZH3/nBEoMPEJqG/qXrJowLMMATPyC/Wp1ovZIgNwV+frQx8X5NnKQq
	 DVEbf55s4MGCDU1M2jLgWnmmVnW5ggzy9BUkRXW9b+RznIw0wQm5t2Vt1m3RfOLBHC
	 TB1SiqL4JOWescmgRozFvuyBixOpe1I1t+9BV9Cx+eBK+fH5+WGLpc1bxfU55Lo+bI
	 BavbE/p0Y5DqBUeSUCj/RLCwMzPoXhR9aKN2NBucNOdMtSi5gRFTA2wl1kNubto5cm
	 UXHf1AQ4rMgKWS2jPYFCIDd+YoC1XFXYssB2d9Ur6aiQRGyDzuWiKxPRzZgMQk4cAj
	 /SMqhD/6QTcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AB0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893905432.31893.4195592288571331510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78160bb8aeb97c7699fe56436aa9aa53df6183e165aa667095b22d347303b531
Date: Sun, 20 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668939054
