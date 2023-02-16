Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CAC18F
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 00:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF513C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 00:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676507345;
	bh=1Qfhr45vhayheT6PvisM3GvEIM5X9eIkvHucTzlolKo=;
	h=To:Subject:From:Date:From;
	b=bbM1qZPywvclDf8ddFNehDLW9lAMa5Ppmvty7YPINg9kU4ll3SLmDFqEbdC/d8U7b
	 E5/f4BV3vc9ZyxMYklqXZeOptEadJr9QOaANpqH1/yQM7mEXDoC66sP3LwyTZGBqhR
	 P5IMaf7F59cInEzsqSc90JlU9VlNT5r32AGhYNhTscnAYMiEglCmNytWHfZsm6ruXN
	 bLkE9dQ9VienkUwdmdtR2Z9NCpWaGlcYjFPspXTSe6YKSjukfhPfFrR96C6g03gKvG
	 ojgmdPI91Tf9E4jlu9GBHQEOswDFbixgD0S28/61YG//d2MaNKt2mZFs7ox62MhNBU
	 VzSnPwY2fVRyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DB9C636D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 00:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167650734575.11947.7701290922812654282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff86b1b03f8b539ad350f25858fd26e3f3e011d48bceef799eff29bd06c72fab
Date: Thu, 16 Feb 2023 00:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676507345
