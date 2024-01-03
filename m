Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311181F934
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejdXlqA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99239C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704326296;
	bh=dzgMxTaJ3NZnmbhsLhUd1wdVyixjZzo9CyyX3tpqDkA=;
	h=To:Subject:From:Date:From;
	b=ejdXlqA/ZXmsLqVFwYMn6wvaz5PrP0gtKane3cmYwYhSfh56c229FQG1Xbqw3hOBv
	 o9oGMptXcXKQaAKt667Dc2puhaaSULigm6R4006GUPZvR8MnNvBGQPDU0k7CroqvwH
	 O4ISdwXK/gA8HpXCWxerHMswhUJ9UYxYayCgmcpM1MaLzGLfRDEMERISHCmB+Naf/j
	 Ak+iVHbK9niCQoqhVM5FAc+zSPrIAignQ/d0cgH0eTxtj0BdKcv8+QFz2SmYpJOiL4
	 spcZlrkfgdNrIJpKsndZQxkhcg7z2jBvsoXDl8yY6TfdI7fn5yrW4kcX5USOyKe3n+
	 y2XqaJWl3ZE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7B0C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170432629647.17001.13188292420432433520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669846db9679b801b0407b0003cf4e36b349e4fb52d8350ea42f6a5c4064e669
Date: Wed, 03 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704326296
