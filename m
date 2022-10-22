Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08F64409
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75482C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666461653;
	bh=lVW3SbnuzPLYrW7Z5fpQsTqQk/kFHWFUCSz2+2ky6Zw=;
	h=To:Subject:From:Date:From;
	b=vEFxnsjknstSkdmzp9JU9EGAUsBmIbNBXeKliAMSVtt3s2n0t4zUA7z8Kr4CB0IzW
	 Dt2fKfaD/h7pJlGTWbcdfQOVPbORpZDD84gDbwe2WlXaLoacoRTbhPrESVVoh3LLSR
	 WQxg5fsrQRBfUvV4bVmoa/LLAK0BFCdeOgaAYVJLKtd+64Pkzpq2Xid2L+OBbE2MnV
	 TuDItjtPG7nMLK3geGOuHv34SbTdgE8oSU1SNWTXaTMY0BusDOf+dNAEvYliPjD0G4
	 BjMP4Ajpwyy2EcyZyj6fy5YeSlq7A20/D5UFbfUbYGg0yMQd3RRq1nLlwwPcwGlwZR
	 RdQ0W7ynXlK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56539C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646165334.8353.9877518064833834573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dc395c57c5d597aac0cdc7212a343b04960a7cb8ce90c49eb7639ba2559cba
Date: Sat, 22 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666461653
