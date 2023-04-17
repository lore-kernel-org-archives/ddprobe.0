Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345768832
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1D7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681757945;
	bh=sFYAz/mFykqocexaNBN+47m0Rge5W7Cp+KrKS1XJbbA=;
	h=To:Subject:From:Date:From;
	b=AXNigHMjekdbdIXhlXN7Kqx5MaFHcF0KrKcg9l0X7Etd9/I6H0vbU/BNeIHTkXHLM
	 owghWCDf0661nqLPraMf46zRtvb0bIaha5yY/1qp4zZjNU6F8T7FFXbQFclm9jj9ck
	 bs4CEcUCyQSyRwCM8cDJg1lGBjYd/GUgHJ5OBqEtYQMmGVkni4bS3hnv+69kppwLR4
	 f8RVleJZV4H6yff8w2yWzihwAru+9XxrQHiQVZ50JJ/niPPfOjZaO20iCbdV/FoVLX
	 2pmKRYWYa7WFLIjsKuJaC5phUiTZX2rkortWPDJZQ26Xat6E3tXEYyMgblto5gP6q7
	 PYwRnqYscI4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57BCC77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175794579.25254.4643075292687317070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1e03bfc96afc0962e1e6a9727709c7b79bf98f1860a55705abe7292101563f
Date: Mon, 17 Apr 2023 18:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681757945
