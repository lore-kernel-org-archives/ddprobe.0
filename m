Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B683F7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF0DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670204454;
	bh=WENlsaVhKgjHBEZaJ34oePFu/pWLnfaHun1DEp8FWuo=;
	h=To:Subject:From:Date:From;
	b=cHK19631jwZG9nLp7cI3siyv+YccVwSX3dSfRF7aXmAHLeVckqhd2PhvxfHj0qYTL
	 /VSV1oe6ZuSzEXa8/eJfpfnszoUSgGwTl/yf8WXCWfCiKjd67cVoOH2a9LJbcPtUDH
	 kwX1OHyfwB+hn9cEyVY5xOZW4mlw4uVwlL4lWlitYsFcDhJ36VA3WeaThTzm47KiBX
	 YwJ/vzvmp2+bZiAjrapwY5sQvR7x8TxYglGggYqxGTsm0jTF9yWax1h6HnfZZ99Fy2
	 jCPgH6gJ3MduXL7b400z5RElZEMWVQmeERgYOTx+/h0312w7zg7281/CsoVN59mQPu
	 VyJq5ZD+I7T6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53701C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020445433.4913.16940692600423628961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa989078a6d5b9359bf181c785147e34185f86e2fb631b0ae917a090b2d6ce4
Date: Mon, 05 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670204454
