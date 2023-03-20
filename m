Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F031861
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C6EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679317625;
	bh=fVqEEsYNTaoz00g1iVUljuGEmgq8Oldi/Oij7Xlccso=;
	h=To:Subject:From:Date:From;
	b=HYEJliQoBgf+JgSBnM820TlAM4+91quZ2lfPuut7ERRQv/m2v+LtVIz/zuDw0XnPh
	 IpYlKnvUDb7PyrHpWUMOyrk6tJguNHq5r97Yq5tCCpRr9dokALwM9htzPfQ4EWE1UC
	 RlVb85wSvv3/glH2DfAn4SLp+FYUkcLFxR+hnybnaN02IFoxginfViI2GPNItrYtsE
	 XzVLRZ5lLCQbFxBMKA6NIrAQHkhgzGIbruCuToOK1YmV9Mlp4jLtyHg+p8QcVM0jan
	 vhm9cEX9eFSi5CQ5ueSFy+5rsAmb55TyaJQrPotvDhJMzon2rUEoIIfEEolS/OTso3
	 8JmYdTD1MLh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE499C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167931762577.31984.16697821319530536987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb46929af1b49689855a2d5d1f0b13f00c1b848ea0bd6ba18dd7641a3f13909
Date: Mon, 20 Mar 2023 13:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679317625
