Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128164C3DA
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmYu2tL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80518C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700769496;
	bh=uahEnFiIRz4m9DlufYlEIVU/pPE2LNhl1zmuVBurgWg=;
	h=To:Subject:From:Date:From;
	b=mmYu2tL37w/5rJOqRDQhgvf6iJd+4+yEnaU6m5gwWU1WfoqBtnB33PUuxP48yiUE6
	 I/GWsk6IHE0+8XbjAo+F20Me/wW76sT99XB/JBcQZa1cF1SqNulsLxuwGtESoqMegd
	 NKakxEeildHP67brsoJqfwNJ9jzMnYrG6kC60FEv5iR2XNFrVsTbPN50T3bQ/dWHpl
	 f5lK40WPIg45WuIKLZ45iOUJgYJ/lHsSKh0Ois/R1HR9+84ouMW0hyKHq0+NhIeWKE
	 fCcixLzdWr3nfkLNp7pVA79N8PLpUxoWipyXL5kfKDljV2QqJAGTvVMzRGEJlE7ySJ
	 i9r0c1t4L3sAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6648CC61D85
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170076949641.11823.13354785148483953546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7d818afd0958c877e62cdf28042e82d49ce4186bf679188ac6bed1032d92fb
Date: Thu, 23 Nov 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700769496
