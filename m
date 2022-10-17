Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A68A52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87114C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665971453;
	bh=20xAAv5eWRSRGSyvpV3qr+8WOCHZHD4hNaWPNDoz/b0=;
	h=To:Subject:From:Date:From;
	b=tBBXx/Y3b+1NEayKVUEX2ctVqQ0H3sSgVZ69PlnFpgt9mESy/8PmqF/zCZQnq6tvU
	 4J1sGxU4Xurh3xKSIJeNrKJW9LYmgmGuBTG4v9EXsNoDZt6mSxQNiSkE6+o9dYfxmf
	 c8QOFoRpdKAkknV6jrm2V26HLnEDLVbxRvj8EiWnhexqtcM3EpCydktPDWfCatKOTS
	 ED0q04xbvo9+4H10VLFO3yT4BXQqLj9mQPUsZteVnMn4xE16zg91fJ1ZqBRN7F/fCn
	 phXjQlQZicgXrUIJw/fXUpiZG8jGXL2QvAXn1CrG9OFPazoAxXwgcIKuh2jw6d1bfA
	 Cah1fLyXrNcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E9CC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597145338.31960.16986579600965743615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38af5bd06d0b30eb5e35d852f079158ef22e4913b660d36f6ce9c45491afefa0
Date: Mon, 17 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665971453
