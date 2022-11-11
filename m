Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E406727719
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C785C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668197454;
	bh=Tcbw/aC1lD2gnueJLvOprSsZWjyVCpMhk7wq2iPq6rg=;
	h=To:Subject:From:Date:From;
	b=JxHQQRMz8syVi01avotTm0hFKd5tX+3GULVKKFGosADNmWhpSrTaCt4FSr5p0J+LM
	 acULD8Ennfb42sO/EFIK2uB9p5PV6oYPhjO/f1+5fhZShGpdlo+SEhPE9J0RVxTdTO
	 l0tv/7UwJtLiwMfNgtS8Y/zk/4ykkFEL/uZ3jVh4T8P0UdXSvs4UuU9Y/vyzo7M6am
	 y21wEyWEyVGII2MpSnfQr48a+ZyDBGauWJOuUk3MFb8GmUZNjvApQr0UhO+k9ciH+A
	 i0Q0ikPrfH2tiEVHrSIpQs2RgYEviL6u85BQovSnG/g3QtgjTkj3EWM7NiZBtP+1jM
	 ovyjximIB4rWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D076C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819745443.7823.17473793729887741027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f9fc2b8750eab4402bf008bd42b8a91bdf6897c15418e12979df6e9caa8bec
Date: Fri, 11 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668197454
