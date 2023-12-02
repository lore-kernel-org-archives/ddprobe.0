Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EB33D70
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHUmgVVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796E3C433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701494896;
	bh=fhOUBcG43Xc1ihC72NokENjFa12sTxSnoHWvP2Hyzeg=;
	h=To:Subject:From:Date:From;
	b=tHUmgVVbSJUeYN9b2LBdNUCquSJHVApGsSXMdWXzf4am4NeMYM2KKf28AfoLRa+HC
	 SBlKEm6JL5PO/KmK+m1bNO/ut5za3nwigsfzDSqtWb7+vu6rW5mW8i4fHYvAhQ/j2O
	 WDj4lVzrtkrlY9X4PxvjIkoDmejA71iaEUvknAw1ppNP3QQBzFnpQ1zLYWt8gyH6d7
	 uYgyMzl4L3Mn+/hV8XcUJE2Qsxn3ucY68wrNw3IJn8pR+M5Hv7Msh29zM9Ii8UM9jU
	 INXdqo1wfOkFXOYFUMPXSSoL/zVam0N6IyzrOAqLWrYm7vVaCMgSAY/8PPp+4jlgmT
	 vDPBntAK/fJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E672C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170149489637.741.15694720747673303082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13db1f04ef9394e884feedacea3722a72a4577c45bd0011130fbaff502882f2
Date: Sat, 02 Dec 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701494896
