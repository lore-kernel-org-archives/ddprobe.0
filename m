Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F871EA9A
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DA9C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690877528;
	bh=t8O0Ietu9hE7XmEWXKUm1ccrF4D8pE/DFrBg/HOFpuQ=;
	h=To:Subject:From:Date:From;
	b=pNo+r3b/WE9Tft3RZhNSnJ8xWm+MAQKqehamuWpR8PxeYPly0weuxs01MNkByiW8Z
	 IZ2tigA9c2+1MAJd0TkK6SRilzb6rNNFLnLWqE7TFycrD5vOtKPGvqmLPdi/WyLJWh
	 aiz9xNMAK6ops6Zd7dtY719a3PBLZ61y4fthNUlivg1RrkkvIaj4DijyS7a3oBe25D
	 Gu4uY+2CHh5jRDoDPDHRfxryfoqbbhT01nISfVL6W48aXABLhAXwruM1IQ1S68SQ+u
	 pBDk9PqtM4WYtl+tEOmNb7pisqeKT0BE+/LFnBTCZd9k0YrMrYTFLAJ5EO//noRv/I
	 pqQHeZKQPZPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A872DEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169087752868.5322.3632115289360192768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5df463200956e7556dc0d4d7d639f3b23fa185049dca343e285ac163813ecc2
Date: Tue, 01 Aug 2023 08:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690877528
