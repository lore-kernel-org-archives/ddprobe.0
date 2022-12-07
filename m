Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFBF2102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF40C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670422854;
	bh=p8bPcdIUYKpElF8Fe62RUDnE9oHk2Zo8h9+aR/jviNQ=;
	h=To:Subject:From:Date:From;
	b=HGA9On0vPKuqcEaTPbbAyLJd93Ds5eBaQ7T8cF6ChzJS0lMphwH552m1yo8AYJ5Dw
	 NPv/oUZ1NOFtkqmnF/98Au/8Sg1/YYD5f+CZhKtGgE/09qVkvudiHaIhsydqHKiy0l
	 i9btcAFbfjSffPjreybljAaSC9kaE4Lu7PYopjzovoIV4+x7mgl1iUHT8GuY6ELug+
	 tXuEVxIOgRt7i8Daxd9mlWhgt0Y8aJF/CL1gcGCFUTjiHx0C8d0UFTNJ6KUAPugJ5C
	 GztflwihQWpCt/IkLoGBTGsSdgUYjwpne1S03CK79PBtF3VGVNVUUr0Tp1mdgp7UNn
	 0kKINQ8oS4qSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514A9C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042285432.1517.14888861745416196060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45360c7392c6552223f5e9065d9ccb11a93516bdeb74260a64976fdfdf6dc270
Date: Wed, 07 Dec 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670422854
