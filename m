Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A9F173
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754434793; cv=none; b=jXLFQ8B3f3juTfTNdHHzZWzvuqPxgTsT1gGXoK4RGQZ/Ix1elDixs8ydPGOMa4WLUUW20UcbKIFUcxl7JPr+NU4Gjc62OzCb2lbdes7oSkK8jQQgwNoxiniscUdQtamRw8w7zRAt3JiFdHAfnFYCDDzARmlHoERE48yh+i4tuFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754434793; c=relaxed/simple;
	bh=Ewu5p7SvDUH7z8kmyMr6mGqs2VykFvEFyzi2euXarmA=;
	h=To:Subject:From:Message-Id:Date; b=hYi1mq+DFyRu3xw3PqYd3HssQFDrTTEqgg7q4VfZJdU8yUdlRjQBjRqSbPGvOM3eEBMAdIxhl7IPCXcEPvpHY9nLW8ZIMryZnASU8Bfl/vK85K733e3NcbFodFpfjWnh61g39Y3WdkmWtREwgG0QrAGCEVcAellV9X/txsIyZPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fo3ImpZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fo3ImpZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E57C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754434793;
	bh=Ewu5p7SvDUH7z8kmyMr6mGqs2VykFvEFyzi2euXarmA=;
	h=To:Subject:From:Date:From;
	b=Fo3ImpZzLin1+Wip2H43L5DobK1/SnxS+cJiWkWTp6zjPAP1PAezGV0MyWph9Pt0O
	 EcXeQQyLqIl8euCzCQ0XTxSYh7s0SVoc1HIpn243saQ4MQd7UqrosTqaLyDz6bncUO
	 uz/StteYE98huMM6zVsHZYq3ORGTtkZx1f0i+1r6PqzL5ogrym/nP4Oa13EzN7clhW
	 T06yNGY7cHKVE9y54yk5wk+f7TlqjJ5pUHVFf/IcYQFe9AeQfc/wR+U19jZ9v4udVo
	 SebIqO8WSCtr8Dq+yKXnI0tgpvm8/9/mdcse8PjpNLZgvuvjq4LBAi9FJZjpT8NBNB
	 pahHOWG70wASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC9C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443479357.20060.13583572949398043682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6d3bcc6db3f1cfc9307bf8da8e424c943f95bb49a96c13c32b5486b166ad58
Date: Tue, 05 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754434793
