Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B594C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62662C43470
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666119653;
	bh=3ccJb3R1HWu+njFqE6ETH/8Zr0x6Tyv1MulnKTcZPH0=;
	h=To:Subject:From:Date:From;
	b=tkuJ6zjCZ5BmatLSM7hj5Zyo8zMzG8DqvsVMsmDU5mNG2qG+0y17NWXOgT/HbLrzR
	 zh6EFzyKUwDIkv1GkyXY31+qc0UWfCHlyymUDlmyMWRgh7OnSdqdU2yIgbUsycveV4
	 XLVe7eP08PMtqZgel06dBN+46EVDmaiH3EnBXzJcjxgN/Z/K543gzuEmhshgerC2KP
	 rLG55RBnQm2Dn8bJIiLBD0zPrLk2A9PJZpI00g1IJ7/vwPFFEwrzAvkSqLZFKLhlvu
	 tOG2dVzoyQtfw1roV3ba68Wdm3nT/JLFumFK3ZB3dBlBT9TDQp/A+u41RGMhiYASTC
	 zpQA7a1O7QY3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2F3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611965331.7436.15259565423567109669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b210b5bcdd9f4adb3c9f177923e23bc9d5c82d2fa2b97af4fe9aa8d3f2cea1f
Date: Tue, 18 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666119653
