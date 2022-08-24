Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64A77B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71541C433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661377852;
	bh=/2sRDJxlC7qEpfuQlUOxoA/4ugjH8xa/bEqipQzyhCU=;
	h=To:Subject:From:Date:From;
	b=KMrJFRwmPb4YYywFkxXxXRlg0hlPAn3b3Zq8V3vMwy/umKQ0H149FDy9bSjHsHkO2
	 wtm76DhknMfzp+41ur5IZyvmUMYdxe/ip9hsRe7V9XX5Qig+v58CocTm6oI1ahtfz2
	 rIcdJax/betE8N6mujhSl1VWJfu/oFug4M+ZDK9gBK2a9NjvI5lqrY91vd/Frlbya3
	 oFTt3bDDMNevzNNY0bKqZjmZgyfO5w2uiPNnPv0pf8iQevGafpiD3S1c+THEz6xOsd
	 qFrHsxSrPtYWBRoNyCjVz+3g8wTB4a34PqGOIwuEH1hUMRD4KNI9GQBtENB807H4o/
	 BwzMr2HLbCsYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5473EC3F6B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137785233.1372.5645737175069724644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd567282d90b5a4165c606ba747ca89d9b6fce5a31e1576c4fcb3fe88807751
Date: Wed, 24 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661377852
