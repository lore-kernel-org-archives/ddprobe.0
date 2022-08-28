Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72AB538C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B968C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661728852;
	bh=imzkITnU5Q+Cyga3KGZDQxwBHd2OLCh3yGHdBWCvwr0=;
	h=To:Subject:From:Date:From;
	b=V8xzsWT/ME30RxoJMYDAvxCwcdOOYhu09DGmY/P4xAeqzk819+qWpFDzaeGeLa5jA
	 VBGf/N5hgicvNhSEDgbOA3sLJlBxPlj1gyIdGJv7usSFTwTjTpXMWNuZAHDsA0+wXw
	 eGFy9YM2EcmVTxfndqdMSpI2Izt9Y874iu1EyfeAexEFE4J7LQlRCyMTKBApceBq4L
	 9hWwMHZbgP34nXREzfN3c5BJoZ/Ww4IXqYjTYJ+xdnTG+hJ1ZANsQ+FRvwEJl5G6/g
	 EsT/mXHkfXaK3QFCEYvXCX6vYK3jmuROaRQh7O3eK4eoNltrldilrYowH4Ao4QyH8D
	 R66wC9AfsQSug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51372C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172885232.22551.12758146554730820632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1fb2cc5523edd9c395e9dc9a05d1133185dba37c541b7ce77e06283deee38b
Date: Sun, 28 Aug 2022 23:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661728852
