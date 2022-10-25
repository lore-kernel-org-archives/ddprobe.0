Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EBE7E6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E857C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666675853;
	bh=d2pbojKlB3Mw6zNQ1X729A7y6AQGUHWBKz6DtaevSKI=;
	h=To:Subject:From:Date:From;
	b=iSAIJg4ngQlDx4Z6CgZfBTX0ldNAORIhtS1Exm5hwRayt5HZk9H53zRAWBqxb7vZl
	 iG3Zw65GrTyduAJHgMVdjm9hx2ZZOQqhCSS0zSJJRpo9tK6VYoDlWZ/oKofiWbuNXS
	 EK+LJ55DBCTTyERJegqdNu8nDY0W21jECCRv7VuzLpl6nVvvsWnS3gO1Kl1+Hj1tt2
	 cUpyfPvvl0uIFwWoXwLRoExlNFWHMhNGRsvYDmjj/DMwT6H9nn3Msniqv0XJW5POvX
	 lhPVs8KTDjpugFK/E/OjLz5seljzpR/eN+TgvNOWVXKSrAsSJgC9vcbpkoGLKsLwhj
	 9Mjjc+cluipPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52311C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667585332.29575.2104012964535564224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f83e9559a8978e42e4abe03672ef80bf6ba7a1027bf425a838918e7a9c6a4fb
Date: Tue, 25 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666675853
