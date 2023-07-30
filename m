Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA0F374
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC889C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690691528;
	bh=s/TqBOoHhdqf9grKeJdvOeBLfeiHmLlBGnOWrXMAImg=;
	h=To:Subject:From:Date:From;
	b=aUiyNm2KaMyTUkZ5/3Y8miBT2KZOwQryeDWZwiYUG955BGd5py4rLkpey9Bi09kIW
	 VEK4C9STaBHlM4X2trt5v45opHcotKXB09lNMldUmnMbWrIjInuy03Nlt2y7eTi09o
	 8HHJjvNvgrquzkxWI5DKTLDUdcRK9asBYkgXtnGTyaQliXmNxBT52oJWOGjARzD5Kc
	 MNmmoZPtWOVAmEwoO24RJ77izBsaVdCiZP+NHY1aPklsjfsI6Gt9+qkdDV9ZoVU38j
	 FOm7K/Xuok/Dk1yEy1LHcyd02JKbaaLUtb2f+ipNNqAh2fLjR3H0NURKA1NH2txxzE
	 /L2w8J3iN1AjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA088EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169069152868.25874.14299189751919460530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2c4756984c425e4a2d8cd5903cefa1db872ff11107cfff047c412e83292d0c
Date: Sun, 30 Jul 2023 04:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690691528
