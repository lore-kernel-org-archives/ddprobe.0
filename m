Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9E2624
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 992EBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672159287;
	bh=83JCLRMwpBQ/sSuqOeSm2dHhmFo4vB/f+c1ahbUeZ9g=;
	h=To:Subject:From:Date:From;
	b=Z1Nfn2qWkOefL5Cc7K4bvM2Sbl/rCCRfUO0s3dS40KZ0o1PCqWW3DCHouimbffTY8
	 3VArbx26g1GE8cR4YYjJr58ChcbNAoL8w5RMd5e04DQVPVfdYpUxOLFT5WGijmrBb9
	 b7ZPVnqgxz0LMknz9wnJSdUGhHBG16izQMnwDLECHmvGsvi+tLwppFaQqYOQGwd47Z
	 tU6NvpVh0vd7s3TN66YmdcU08ZTZmU7E9RFEQPQWZYZMeL3HZeyGV6EO8IvSZHgUWw
	 SEwJear5a7+vz8Xc9dsj7c8be9nCcG93xblfKu45jrBWT0Q21JtRT297YxO0MeLahX
	 CeX3IGMcDRmNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 786C0C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215928747.29396.12869096962254387198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815952b8e013c51e66f025960a8245b154f48a9305b396c12b2f57264b1f700f
Date: Tue, 27 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672159287
