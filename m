Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2E453B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3C7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664480453;
	bh=cUZswLfwSwy3Y7xBdd5YvT0atCx0n2YTe4pozCPQyN0=;
	h=To:Subject:From:Date:From;
	b=lxyMnJ0wnmDr1CQ6R9PmQzVFYybTO7gxWU34EmV/hpO6TUB+/j6eRyoQBNUOl1aPi
	 c5GDH1oB7JlnOIBuu6HUlDiPop9xRw7GgjM747cXn9iuW3V4aAfZ485IO/HNGoCCnP
	 XkyKDZjdwggdPdMd+u6XCJRrjRetKwj1yV1btIpjMiSKxR8v5AOSE2HwJu0XrHB794
	 l6+ZSyGrvABzp/kvwpyR3jKAiVHt5BKRtuPZGM6sBnZ6tSVaCgs367iOpWvXZ9LemP
	 PTXPv/gtP7t7Ihjo9jqoq6tAK+h5SGdgEeER4UcLqH/v9b944BWHhfTNkbALyCb8nj
	 KT6YD56I1aJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630A0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448045339.27189.15274673965581521518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907dd77a564e0d6e519ba5c270a229b640232d4edaf3934bd4dc5ad3aafb075d
Date: Thu, 29 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664480453
