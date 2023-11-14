Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268E38F55
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgo5wLww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A124C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699934296;
	bh=PB9DFuWFJxLSrHASjC3a5Zz9XHeDESn2Loz4yJQl6a0=;
	h=To:Subject:From:Date:From;
	b=cgo5wLwwbHFbREHXa03J/SBGhhSwCtDzU9BRhI1PoC1jShXBiLMcSUNfz7xGdhKJX
	 lirjSGjVhdNY02K+kt5QWt1zjvvbIztBkKFId25IP1zeHZ8vDJPMY0M8zd2vtYnHFp
	 eR1UJHEIy22buO1T/b+nCZJS5Yj+af7FdmJmVMJPDU2r3U/Y7yVw3Xit4bChmA1j2H
	 iyCKFUUk18GpBqf3XUunvt7kLCIQYVHGDdpJtOyZ3rwCMUDLtnDI1kGOWRYnbdgvPD
	 E7X6QOw+f2Cl9X2lgV8ngNaYPAP0xtjPVePNE7d/nNWAhkQr79G+mKwMsAn+ylL28G
	 JUbnUF/YoO/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B43C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993429646.5058.13408257650420462856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311952a7588227695109cbaae4e3ddb0c8fd730e66398ec1dec1378e0e8d28c0
Date: Tue, 14 Nov 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699934296
