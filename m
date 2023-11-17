Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277AB6AAB
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7Gl6iC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D63C433CB
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700245696;
	bh=pXh/Bh3zMBu44ZKt7LOWU4EFTKkoOWHmIHNsoXj6zmY=;
	h=To:Subject:From:Date:From;
	b=Z7Gl6iC9hsyKCOA+g4dmf5anllgqiQ65iuJyRn1wMeRjdgL+/7KRms8CshHk2cBm0
	 8ZOMW9RKFA7XzvXHeej+dp1UZDkmxpZB/ojB3Rryf9p1DHHzsBKsURDr5pjTzHuOmO
	 tDFnaUC+FowgYdsMzXoWSaHpzLxpD2V+7a7NQDN5C3Mf8cfhBcbTrwkA16WQ+oommu
	 vvkFeP7mpJQqYdEc5u4MEdG7R+7Octj08AIN6dOIC3RBKImwtLeuN0rQMQ7v0gQtMx
	 HLNelIHcTs4jmtkffI0lcy5lDI2PE82Mab42T+cRa3Ga/ItkiC94jyrhFphjMHXHrU
	 DYeSxcD2kPgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DECC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024569640.31867.12999818953959563220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b140c549e0425e93bf96fe6be4c8fda9dff186c1a15529c33ec38746644cf435
Date: Fri, 17 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700245696
