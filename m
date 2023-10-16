Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BBB1DDF4
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 10:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR2xUa42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA903C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697451428;
	bh=EgG642saJIK2ddXE9ySXl2IJm8wxr8bxxZV2xQiYBWk=;
	h=To:Subject:From:Date:From;
	b=VR2xUa426HCfmXVFo5PwXFKMHB8bLFHwOCLDcXUJU2FPbdTk0CAVdNVRhT/D8K1yn
	 xviTrUxksIqg/xkwNqEs8BUSZq7C0BGPi19YzWGERcXUomWrYW0lLY6Xt1tIZgkLpv
	 U5B5GG8GpDPwvRn2Tvt4y4jYmZmaotZcSTMqer2WXiuIgFHnxkG63MudDZFW2yr9Js
	 rnBXCLFH0W5NZIXjESY2J0zn0KlmpPp0znyHyQnMWbS0675KvCU4j3+2N0+011dC1+
	 wsfr3MPEBSyFBe2t/BB2f1+h/uycHwoQwHf+0Gfo/GOdb3IC+RjmgQpLJPvSWaw4Cs
	 KBzoVt4CvmHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43ACCDB482
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169745142866.9993.10225432667869507254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00536f6d8bdf95be45a54ce4312ab9d4479af4bd6fd7fe54c492eede6ebee1f2
Date: Mon, 16 Oct 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697451428
