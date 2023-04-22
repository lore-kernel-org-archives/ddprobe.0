Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABAE7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 08:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D882AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 08:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682151005;
	bh=I9oGnJlPc+Z6vhjV5km2rCtUBZwenkIuzKvYDfIaf3k=;
	h=To:Subject:From:Date:From;
	b=mFs/ABRVWLoCgLiJfOLLXbQxuQ8u6iFt850kLIt7OSa4OiHMdywYHxNyg2Ywmd/j5
	 l5x2U1ypumsi7+3Bybf5p/IEoyQKKy5ATgifMMq7UgY5fHobf5m9SKbh89fwsBq6YF
	 RM4u0k6D6zbhnvQ9/Eh9/rwtvkH2uXl6RU+PMG9tw7h9uLdpWiNA/FEvQ7s9LOJpj7
	 qRprU4g84TNFqoNffhnZTwuF8O/CqW5u3DlkwMk5aWS1Sra6EiHvERammerA6O+VzA
	 D4bCdTRRdOF61XzV5GLUObxiID/iRjOBi8npGCa4+36+4zkSloSjVkkxC6sHmgzH46
	 WGW+sfWfHB2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CBFC7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 08:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168215100574.31560.3411322486168786987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67e90ff66e16d16a8d3373647bf6c605c10ab09139e1aba77a3d2a9f7ab7e4b
Date: Sat, 22 Apr 2023 08:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682151005
