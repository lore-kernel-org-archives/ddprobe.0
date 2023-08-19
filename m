Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CB41C15
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4561C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692432248;
	bh=4gF0k8zOU6J0Nlivrt6ZkTJTaExg04fOUxJOXlwXuao=;
	h=To:Subject:From:Date:From;
	b=k+Ig3swOuzPvze2F7V/Ra+BOP7HpiHOe1w4K0dCE2kAzVkBmOTbR4xTv6cKak5//V
	 +99l1nlcY9yVzaP8xL5WppPD3GDMaqdmBha+AwvNtKI50vGmi1ftLbVd3XxAGMtzdY
	 9bsNdU8DSpeYk2wdft6brsCoCSsgyqoSpmTcPi3v8uVSRe47P52TdOrWOz07Z2r+Pa
	 nJvyZR41uJks5Tzy6UZn3keNJeiAFFHXq/ncen+APG5gO74hruDZdJADmq80KrnrBY
	 ClhZoHVpZlc85duPxwLV8hPkAY3x+bxrxe9W1M0k/P+dGo68tYLmVB7w084obDZC6Z
	 xhY1nhV6STNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E19EE49AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169243224867.2906.4624095279418883461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5399a6a8070eb760d880487d3b378a2d76718bdadb958825605bb6753999f9
Date: Sat, 19 Aug 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692432248
