Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C219A33C0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5C9C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662146453;
	bh=CHL1JFwZV7bQrJSI8oKzWz5m2FdjSivzJk+3aA0ljWY=;
	h=To:Subject:From:Date:From;
	b=nkfHUXXvBixoPcts0k+r+ddF6bZHToQvxAMBsbfiRwSVXXt9tB+Zj4vLmlN/+um+7
	 p/xa07yqLry9Ekcow/67LfMPKq/cdgFyhmVw+9sgC7IF64Xz62oLSW43CoQQ4jdjtY
	 ib40210vbXQQWpv21FlKumcQ536QUua0cuvPFTDFQcInR0sOxIMY4CFTGOJXEBUZ+3
	 EKHiZqwUK+xWqTiPoyVUM+Y84e54mhp5OCEAaPlqgzMtDWRnRD3sJGxo6JUTIJSyvE
	 xFg7LvKMfD+JEriEBbBuf9AsOSCLH0qz5JtjVP39HVGtN+mJBxx0bEj3KnH9RjM9v1
	 BqZ8AP++CUriA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BB1C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214645335.16602.7225234051313764713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a3598b679496ea20fadede96739095f3efa7e70903ec7273d5de0aff5c77fa
Date: Fri, 02 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662146453
