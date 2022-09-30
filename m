Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84107B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69109C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664520653;
	bh=5K6gjv00ICWlKkUeoW/CTXsHyo6ARrb8S8THn1fUu6s=;
	h=To:Subject:From:Date:From;
	b=LApU4HvUEiZpqKyKIMCHGx0WGkeBv3ViP0MtvkvmBDu8V5l9si4oBuNGJhK5Ts6rt
	 FvgAqaae/UPToKX5axLzlQgj+f8/UhPeaiOrl+JuYAQf+hKGYZgHrXb8v8MaXANKgQ
	 FBp9iqO+bC6gxznApQnX30OorQdS89qlAAQSFF2BtBF1SyGsXKXpO6mq96klgDrsXA
	 Cgr17RxYrEuZphB8BB+1YMNCg4k1cgiaaYyHAZlQKQDRmzjDVBveV85OpxlLoOtRaW
	 6V+PcCbz/YoZ00G3oB3BdjsllXyKeeAP4GtOQ8GCc9qQeCsK35Bu7FCdgtagtgNMOi
	 EgtpaCBiJ7log==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5105EC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452065332.10798.5121665768999480827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323072ebe90a8d44eab744e639cfe4dc1a98b2e8abd0b20d3d1720b1b8949ccd
Date: Fri, 30 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664520653
