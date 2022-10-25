Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C269C6FB0
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEE1C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666723853;
	bh=X7gVAdVL5yw3jn9t0phkpDWKXHVGou4dTn2VTVFD9Yw=;
	h=To:Subject:From:Date:From;
	b=aHbFsC0mmFsaimeyS51rBWiz6gd7wfBY5/vUrkH0Low7Uzf9u4IF1dsaegOswVUOV
	 0ca8dHQ4MDx4noo22OgSGKoA+i3Cx+sA2sjxheufi2hd1oqsxVmsJjYnnEFqixfRAu
	 dbxn762caX3QhfHNpRs6KO54/o9qFMCy1qN1IyqfkVp9xT3yAYefYmFrTLLbcEUuKH
	 0Dr/F7Yi0lmcdS1uQ5rRVG6jU3pdY4k7HC4wVkCpQtc6KyXiQq6DAFqngR6izEQJCj
	 ZUSCjZce29R2tW6KpA2aRiNeOmWrOuN+5lLYNpryQ91aMp+O8D6fIItL+lKajq9pK1
	 0Az/U8/ui9MJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B3CC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672385333.6317.12110744319538717764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb14ad79da3596477ecf1c97db27ffdc6ad64a751f246f6c3bc227da214b264c
Date: Tue, 25 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666723853
