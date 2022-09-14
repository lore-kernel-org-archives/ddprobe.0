Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7F13D61
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D339C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663153853;
	bh=q/sLAKV6boVNKtPL1NT8eU5c4KElHfS9VrXEFclbSlk=;
	h=To:Subject:From:Date:From;
	b=duJUJR7vnxbNEmINVpMcX1eY0Ej6e8XMTnbwD23302xtFiFdtHYf2z9X+WBrpHseq
	 GMuBq/83EG5TPaKKEKBOR1GbibBYmUqvTHFlbc7HOcLv5uKedzbWXoWiwclwtIEgmS
	 PlIuwefGdgrk/OvEUf8Jw6r+wnNnXxdd4kVYc1TP3QrvULel8JVK00k3VGy1wNXkcu
	 ujV8G0SzPqcMkPlQE6oPezfN9/Bmg1QBe/q63/xVhY8sliUR1sZ40c3aCoAMZ5Qqia
	 r5cWK92zW0vxchLsVzNcRpsvpJtdD2RhPxjvJFcChLyaBNhsxSSqkL1VV1Dwv0XVj1
	 /dJ/qiOGZMK+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDF6ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315385331.21820.4666460705848650108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded4667c0bc447236a05d17cbbe8cae17afe234286f5ac0b8171d99f8c2757dc
Date: Wed, 14 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663153853
