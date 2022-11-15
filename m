Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A315FAD47
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5EDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668520854;
	bh=W7YVlF1/woU6pFIrT2pzKLBuuMfHhEnj/df84m413zk=;
	h=To:Subject:From:Date:From;
	b=VWsJoz8TbZr9ePEV6UQCj9X02t0OMSxuizOal4A+iKoO0Cd/Bi5UEDeG1g1QKI7Xc
	 +/xZm7FztYIFl2eWtBP39okPFZf6tK0i1t4W3kKBGoNPHtYZ0EtehT1c4UKIFFRkk4
	 iBvXbQJlHwOdl9GOegg0BsravW2wlIHCPb5SqVtC99ufmyG5ofo8TGj+dPg3ZDp9dG
	 W35vuIAZeiPVplhMdkkp6BPxxgg5mwDhs5ZlOKo+fXkn3QYKw5FDP7WTV/b0GUH7YM
	 JJcIwjj5Fx1Ezwv6SwMZYK7OZUSIRhvu+My8Va3b6pzKHjycbTWRiS5EeULoOrSNRH
	 XWxe7ujjpKc3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EE6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852085435.16389.14115386363768536461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f7856790d5c5bcef1a59c440b5a645e22b4fd60299fd9024c7322b11fb0144
Date: Tue, 15 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668520854
