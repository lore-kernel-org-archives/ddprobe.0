Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C8833EE
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00F4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684601346;
	bh=6yhm2oOrevTzg4W3KAc3u2P9ute3A8rfrowD7NFePMo=;
	h=To:Subject:From:Date:From;
	b=QYsFV50qnS8kCCc6WvqHrsfNK81/T4+nTJUUXxV29X9KF8USEM6Y2iq97R3wxd6EY
	 3OvU55g2GuqUSrM4TKxAa3et7kv7yJJZ/EhTW7R8Yf5b24Y6ek3aD6/liqlvib+9yF
	 cIz1QCI+TOp+ibmhq33x9hpGmmScvMNVB14zh6rit9yEE6+s7FxGizd8UO/uiSVC7u
	 oh72eFpBtsmp99cVDDvWpUKpkIYS56a0shdikz0aXqfbEk54B9/QOHbLYw2RpJgZyA
	 lW9c6bRVvvKfhIGUn/OHbfrzEMaPjLs6YYA3wvnfBdUnK/6lW+6rFTK0FIbL3qqbek
	 p6aNJ1ol9pJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44FDC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460134581.13068.13373914380210611782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b43a31f1fda6a8e2ea3aa01f93654ab48589c72e058f13be714aba45e501fea
Date: Sat, 20 May 2023 16:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684601345
