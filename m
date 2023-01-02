Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CD73208
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9439AC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672699887;
	bh=78dpUUdtFFGKnQjBu/WHdU5L3DvMH2zFIK0b3GiKdPc=;
	h=To:Subject:From:Date:From;
	b=ddvpTVAVwN0cM0CPq07Vqz/mZLFRUl6j7eJJsdalBbi6uy0IrTtc/tf7pqpYoLpNl
	 eL6S8aynfz+f9xCBCWxvpL9XA7mnUB1y2ecq7dnH0qHk011xV6hc7aYlosMEfSmsS0
	 0gwByhSB3qjehKT/TZWLYm3+bp7kNnNNFd6PvPset/enPKS0C30Vcpwy2yngN2ITE/
	 Cn1351j4dYHrrOgkHJzplWu2c5VXVSpi6FnRUzGC6bNpuqc8kuqeG/upEQiW7VhHdd
	 neVHv4egWDb+e7w5gNpxcfTyFBts4yKRmTQeb+9wsk1oNFtTGBxZ2q14TzI/ld1VeL
	 p5P+VxNE7pgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FADC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269988741.29716.6102229915291722400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbbdb28339eaf7a2badf75e544590bb9f6f2c5851d74f2043cd80e048bbc083
Date: Mon, 02 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672699887
