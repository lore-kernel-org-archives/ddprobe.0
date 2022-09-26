Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCA57B
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6495EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664192453;
	bh=qgeMMyPhpDXKCAzTf7q3YWWmqpw9bUds9XGf+g6Uxcg=;
	h=To:Subject:From:Date:From;
	b=nfYDv3DAiwdsvtLADC7mNTqNdfMlfZgAeB6/93dUPrTImfzhFd2y7RyVHRVbn7L6k
	 aEOS0RLL8ERDS+gx+jGxQMeZ73C1lii5RMfevOZU/pEUQFOVLESohhmoBtvjHDzdEM
	 rSDQHR4n+bLjcOKbgaW/Rwk1WgPRVk/AnKoc3IhcA3S2MX1FJ/mJXOzyfPjW4RgbE1
	 ZUR8qdl5TX5anOipsHFnCtayKYUdXRbjorYr8uIZPVTYOzykoDCYqvgZMIUMGhUbuv
	 mmJk+VGVqzySbxZnQnPzH/g2Y5AuvPeMCRfkXF9M2N3vpuJQ9jmNLxNdaGdRv+TMD2
	 TZnw/cllp2Liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA06C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166419245331.12525.28643917234140031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd99b0fa0a2416fa1d2c50e0cf826df9c37fd745a864f0e3551d0b333cfa803b
Date: Mon, 26 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664192453
