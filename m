Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C30910E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC5C7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679363886;
	bh=7Equs9AqbTvqRmzaacmNQBhLk3g1cbmzUNC7RjWmNGI=;
	h=To:Subject:From:Date:From;
	b=sxfLNFcEQpTvZ5vmbKhZ6odY9CwZFAsNAeHRTCL5t41txUnoJwzRzxpvJLGCRzlip
	 Dbbd0EfCMsuwTr2pIYA23U8bBSXCyS0x9xrwP9BRZ/oDHZH1WjvRVBjF355dq1pcAa
	 QWr0XQuDlNhPJcCscKHalb2Xz9Q5LEiG8zEoOAbIwxa5pf7YsYzZoJ3Ct4gogTdd11
	 LtwB3RfSp/ev3S7sZbrv33/SFFsRnBuRU4nGPybTZqnQPk/Aww0a933cqht2gVykZu
	 T+ufdFhr+zXo6108XFo9K6a8krrCdFYkhhzyHDtwuAnGjlOjxIt2ct0R/gDM6twl3a
	 p25g9HLoVrhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5EEC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936388582.441.1810587887792703234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d2c5ec105d8f738a5f1a2007016a754333bca8ed7332b2fd9eaca4c41dfd22
Date: Tue, 21 Mar 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679363885
