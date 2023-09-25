Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6735D7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DABC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695601508;
	bh=JIy/X8XcXRUqe/XgwCkEsUnIfijCqLspK3oDW46Bmfk=;
	h=To:Subject:From:Date:From;
	b=XuDr8sIjwoF1cvhF0Gqrn6+QUSVpB6t0bojz53wUU/H1f1IT/7a2gtdb7xhBSY1a/
	 S5ciHXO0wi0wB3SBE/6uAq6TY/9cwNlCoSLua6eFkdaxHM5woyVzPaYyOLK2xH3F6P
	 55Pek3GXUODyNfMmT7MwCek+cnLLJ7wgxXoCPHfaY1Fo6DPV8gjmRqiA0lhpykhgtw
	 eL83H85cZvSgEnxM83x5YBoiYvz2oENRUyQ8nuANjzxXvOEp6TxpABdOrzIa+CGRss
	 ppYyOf56VtI17ip/hL8Rco1RQzM2DhefLuZdL4mLPbZH1JxWVDEED1vmAW/GTotAlU
	 3TymbQHJ7BUkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3204CE7A8B
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169560150872.18236.14185865204274349134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11ed64443207699825ed257fee38a60b0955236e2a66ffb98ebb8d0b0ca3621
Date: Mon, 25 Sep 2023 00:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695601508
