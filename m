Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E837E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8361EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670546487;
	bh=0FmyyHpdynvw6dykyC7DeLqr4RNFZqCbieZjaw5I5NA=;
	h=To:Subject:From:Date:From;
	b=NPrbetn+uuy5lBBlWd/wS1LLpAWiEQuRmk34WGvr+JdV2gH4LC4WB0EltwnMgFtw1
	 SZEqz4HPpKxz0xqGPw0qq5BKPuXDRttb7QWAXFyyzmCeKwsGZNCQbt7vhOslf2hiy7
	 NHDclL75ULmMMdiVhQqYyreuanojM6ztzxJCRBub6Q3bLB8itZS8ZURNskiHRmKw9L
	 zeElnT/2ll1nDow/MYHfy0MZUIoW05aafRt3RzjWdqttqRg9W55KJ2COkfmClIk2Y8
	 CA2YtEDUXeaYajL4hfZfshygTcycFA/SXHWyFgvZmB3oxCJBxRoQg7dREO0qX7NPu8
	 mfxiFtzu/ltEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDECC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054648738.8946.16512894549073450968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0418155d20fab40a727a7cee8774d7731fff58107a0726c0e6c2914c40f11461
Date: Fri, 09 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670546487
