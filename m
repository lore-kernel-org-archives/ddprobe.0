Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8131FC8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA8DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691131388;
	bh=QsSxd7GG+9e33h1oryQv8BsQo71PIxSgezIcF3qh/Mc=;
	h=To:Subject:From:Date:From;
	b=RmRSxJCQiPe7cnmS0EiDzs6laTx1DLlvDSBLHP4VKVhfxEUAEnFalNE21MjHvIZDp
	 6gxohfTYnb9L/J8sqncj/UomJpjbc+vJK0MOcGPaq4oZs/dryaFmD4rPH3Yso81d7S
	 dIumvex2rAjgdO0DzH5Yuj0+Z+f6mxI0Vu/43gpPC9voim1rvo65XXZcpsT+4FAYyO
	 mqhuBrOeyZOGFt31VxByHGxtrFZJvNK8nOs8YFAXZVvfWtn2WhE0nhZWkm3im9VBEi
	 668rKemxjX/FypovDTv71Fj04jU1xoj2felsVIjhlXMRMKV158r6Hqs5zPZ25eBG3j
	 UX9WP/jlqTH5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C7EC04A6A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113138871.22349.9532436968034241880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b95c7b17a445afbd424835c85e026ad46f0c55608a986940e6234445435324c
Date: Fri, 04 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691131388
