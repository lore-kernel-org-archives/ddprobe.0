Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5F2EBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E48C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668892854;
	bh=qmRRpUXDEZiSJA3Nh3njX38t/ku3F6CYurJ6Zge5bbA=;
	h=To:Subject:From:Date:From;
	b=hZmECr/gMtrZilMxkd1wbUJ2ussJ8Mi0k0VO2sZIyjuFm1cMaDiBeXj8XGWlE/a3R
	 eK7IM2QDXuQQrIh2u8c7Qwe39y5jFpXwjdYbTtg5L1IHLnC382D+f6Q8CtcQGWonq/
	 Dc7Z9Y8FM5aBj/Sv25k0QhAcc+9sFn0IIVPxngec3DqJiF+p/Ss8OgWpjTiVMZ1FP/
	 cVN6h1FXuyq3y+B5beCO0mMqvalzTE60bgpdERxOeZaPX7aixvbPLeBSBt518XwSq3
	 6XqqcRcpy62RANKEuI3agAFMGcfKgTii6IBnzWWW0lvC1e98wLQYtfclJ0ZFxEEWot
	 a9iTDBs3ze0Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A89CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889285439.23914.17271093696734995427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956d83650785d62f6311f0c0d6aeeba171685bf101c46483adaa30a2200e80ea
Date: Sat, 19 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668892854
