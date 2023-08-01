Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE116121
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C809AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690931528;
	bh=HiWCacnnfdEz6KiiA1dGkQmZKBAH5xCDGNHc+UV0tgw=;
	h=To:Subject:From:Date:From;
	b=JLvEZHP9J1VNMk846oG8jU3P1Ft1wEgvk/xI/zqU53NPenPb8m5MPv2uzpoDoaBd/
	 yrBnR6NKaYTgRLytUVLF/NI1QqViIngu/56fx1OKaYfEZAM++KPMp1ryHgqO5Qe9d/
	 bf/YkXbk3OEdxz022tF9xZNhEd8IohFnMhbBghdBAwxCiVmKW4hqCL9qYOlbiDt7rs
	 7XSi8Boy2mAbo17BdQExTbmNWfypqTJqKIdWL6Fd50X4QEXF47AbybfIrjSEz9SqtK
	 38/OCYacTxizyWjbF0uEViDX2IHaEYUVid0afDep2QhqcXuMtf3rSq1xZJNJOo1MZY
	 GGwcWc5lVXxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A623AEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093152867.409.14600311395872448659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8161f8b121e99cfc8e6cdf87c56009c707c0311bc06e002217299449d8a33e
Date: Tue, 01 Aug 2023 23:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690931528
