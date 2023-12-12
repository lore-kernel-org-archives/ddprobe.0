Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C631173C
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE1ZErOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86500C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702362496;
	bh=6Vfg7659iQxBCkSded3yjRvRvRKaV6DScWSQR5/z6tE=;
	h=To:Subject:From:Date:From;
	b=lE1ZErOEbq7FrPYkIuSRuyrt3/muy03XCebgYva/v2MJvWYIro6IUjRIKDDjUHYHJ
	 DNnkLWI5Q94RUA7vgFDaUFgzxPyJ4V0UFiyXbVuXbCKSEkjO2LoSxxwa5roGfA51bd
	 THWmQkhGf1VBzAfhM1UwumyN9immQrGBY2ZDg6/rrIp2ua8BcAIz5tywrMOditpj9D
	 M4EmaUqNSj9yhr3BaI0dxXPSTFBFU7ZvYV+Df2jowszgsotHDlWSpKubR1h9V/RoDO
	 9cFqdNAvRf+FaiZTUjN/NCbHfoS2dqxVDQGL3rvjwU67aZYijuTIBwhl6/1ocCWTtV
	 TB750mV809fCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AD7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236249639.1679.11702539522007313070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b55e1242978c7442418c1dc7ef83d23a0a19152ffd5c254868e3d3ddc773ef
Date: Tue, 12 Dec 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702362496
