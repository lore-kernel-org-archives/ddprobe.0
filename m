Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7D81851
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3F4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661495452;
	bh=KOzl71xi+EtdqXX1ypzup2q2mTD3KlAqW/R8+/Q7YzU=;
	h=To:Subject:From:Date:From;
	b=YAUW3Yb3r8LvnFuLaaMd70Yq277wLjXyJEXw3vNoQM5iszTFnNOUN3Ma76u6tuDjQ
	 XG+I0IQIFXVVmof5tpatQ4AJLGDV77M4iDzWomNupUT3R1frr3XABEcgZu2pD5frmr
	 K/4YxdcP0hKL6WAC4TxGhLUpDloLf6MVY0wh6DJfkNGCfD+YeszMMdl41MYZAJqOCV
	 FBLkxga8gIHO48Emane0i/Ile+NffDdvLNIZpABEksx+UmQiS4TydIGxxGLDYMQAvH
	 bF/l6XW4GjlAY5zpRhzt7IHy3frKwGMdykUZvZlhUucaO4MBrhJkRWxIlQagckzWQO
	 Ma7PPcvqhVe6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562A8ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149545234.20483.774777823931414867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd032e8868186c7a73db3c3c75c81c38bd895a1fd43882a8a8e4095ba43853f
Date: Fri, 26 Aug 2022 06:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661495452
