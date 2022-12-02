Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75484C64
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71068C433B5
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669992054;
	bh=2zIqXlmmDSPhzynMkYDJXnojmDSUakmrNPQwN+9iHXk=;
	h=To:Subject:From:Date:From;
	b=XC69rr04cwuCOK47D5TWB8V6A/vv9WVDOU9Wk4AHim9LxLzmsbxznqOT6ClZ/1uLu
	 eJs88rEbEx/wqtmwO4Oi/HHTTTSqyo1XgnttURnTpbI0zISgfeG0nIB03rgPEKCfY/
	 AIt5vbHDwnLo1/hGwxatSbmo2a6AGyxszl2aBLHJL4/ektSbCco755L/Qxr82Ueyen
	 FQIirdADtyR8ZMMAHsuhsK1QMCHPnuRhPJIG9FdavVnMW+i2NbLnUGmBPEqpqPsspD
	 mXR9Y2+qIJ/uLs8I9pkLXuJGym0RyFSMEpgGyaq/vc11GOJ3iLQZwHZybqNe3XaJeU
	 8h3xftuSUUujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5850AC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999205435.29927.16061336118532137229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee681a09391b40a3b111ca0034fdc8489fca7282f109552124b0c8dcbcce2a2e
Date: Fri, 02 Dec 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669992054
