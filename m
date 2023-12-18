Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D055A84B
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFI/V1xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78008C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702919896;
	bh=v83DSf9gKXobTaQBQKs/E9ZWzhckYfzCUgffopYoDDY=;
	h=To:Subject:From:Date:From;
	b=KFI/V1xj4S0mcbuwd+K5955zvDc9WXkJeKUPk6lAGOvwuYuO+XWO/5VLslnVa3Qym
	 GbD1NfZw0aIf+KItyCJ4JPL2l6mohgmpAEjpcR4fnIFwSIT1hBLA2vQ+x9AcuWb/RB
	 tVqFDoPQyRwdJr6OSS4xOtu8aq0pPp8tlQSjGkuhiDnkhZeD70V8/pQXwHjivqDbZH
	 OtQxW0Qo/2cED7WbBACD4au7et0bTWObXKQWeJusVaiATTASp1BFSJv5zXpsP9mFVF
	 MwduaKxZiKdprtSRRHiVI9c0PXUEmHBqmSRERp4i68XROU8hMClM5Jkgc/Ss4859N1
	 ZWHo2Awp43UhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6A8C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170291989637.572.6484232421228268996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ac1a2680f6c1175aebdf7bb2b6fd4ba6fe66d7a9081e120f92df88e75509b8
Date: Mon, 18 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702919896
