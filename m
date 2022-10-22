Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BD27C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A210C4314D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666424453;
	bh=RGO3IrTwk8n8toxxHlPWb3LsoFYCaO7bZ8Y2zNrPRH4=;
	h=To:Subject:From:Date:From;
	b=U+mT4uGwAmrN1jbfOhC0Sjl5UoHqz3k6iQHyhgmhDCVS+qHiChZLaPvv89McvfFDh
	 qnbnIBk1wsfr5yKRDB9wqRax/QgGaY9qhLy3qJrsKUHrOR4Qsm2ag8Vw5FV+C2DkGz
	 GxLN5SjdniLHOaZpe+y3yGppoTOZsW7lTgoseg68/I/cj8cEnpFWi7TVx9As5tmgqa
	 X1tnW6zR3ftDG+SaCJoogoz7645wiV42K7ubwNilhVy6MS8f+wwJJIsW2nJ3sMyp4r
	 veVeuHyeKUq3+FAQe/wiQK6w0g0oZYKqrOntmgnDNIsfSt9OyjzFjeJfDz3H97zuUk
	 RldKZUjiDQNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CE8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642445332.24667.1576446095442414906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9665fbd5005c828623793932e1bc24fd9fa044545e2b8c3962a892b06efeb0
Date: Sat, 22 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666424453
