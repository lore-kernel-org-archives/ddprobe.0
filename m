Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C15E101C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70D3C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688120588;
	bh=uCXQR5sKuBqLk9ySnwNPBCBu4dGXPijiN5MDI4x1CrE=;
	h=To:Subject:From:Date:From;
	b=H/IQwmXvD86awH/pa65ouNJr8IqbkGx8PBu18qRMAKqHXFw7M84PsbWHWfHJTyyRQ
	 zh5oWQqLRPskQgnu6vNLQQSj7gXssA88caiP4MVU2dXPa8Onrzypqj48uq1fxdSoBx
	 0RImdId4MT1OMsWan6JVaFFdsyQWQJk37xj7kCZTwqoWJVm2DXgCi3dNdcoUO55VZh
	 i2PdIPqdWE6FnAMau3vV+skMi9zeXzM2NScxC2jO4cbqRRR2VCrOE7AcGlF3D2tGSO
	 6+dwGB3Hf/LOgCfZ3fwO8KS3b0UFw7f+BGjiMuXwWbnI2/nv8FFf5IpDlBKRHtao4a
	 RFoJvQ5BMAgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88F7EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812058868.17499.17052940558879482836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665dc0f0c6bcd42c05cfe62f7e0acd2dcb594c949773b4227d69e9739a9283cb
Date: Fri, 30 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688120588
