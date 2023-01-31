Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8C336C
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E98B3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675132385;
	bh=h0pTtaOjtFv5WX++uXrYfois1tAFWwbCvU/83zhTUjU=;
	h=To:Subject:From:Date:From;
	b=JEM7qr9mfy6XlG/PNQEEeXdlWo5/qaET1opH0NMqGF3kYB9Irynz0CRUUY4lzmFp2
	 BKxrLoUSh2/1CRv8o0J/Q2j/Xiqj/J+c8vhwmYcDha/IqF9Doyq2mgtVpJKcT5+Bbd
	 gaoBSSi/KoKgDvShfCKNntEzAiMMA0OCgWoN42mSfFm6YUSq4vrh5lFiG6NrK1UBRD
	 CL0QY/sMYg/aEjWzI2z/utoE+pSXFwih6efsl77pB9Bzd0vzFsOUah7Y12fC+odeSP
	 1xRPk0gcIVMGjN7Q4ApU6cdQs8KQujDAT5RJzUt9X5SqaIIAS1dqdXCCUXNQ1wjWuk
	 A291Sj561OgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83D6C636D3
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167513238580.17077.1155342449129629283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec9fcc7723f8f1e3d141a2030c7e305259be4793d41432272ad64ac2906c089
Date: Tue, 31 Jan 2023 02:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675132385
