Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777F81E522
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DD7C433C9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687438388;
	bh=Uf9ZaKTH+S02Tjd8Upfd9ZID9YyrGWw+ODrv2Ioknvc=;
	h=To:Subject:From:Date:From;
	b=uc46h87XEVyp5DX+TR9gZAMTK7mehwGLveJ+or9N0cRk+W+Qv5zQRZefbVre607AD
	 6NTvybv3ItjicCtDXlhSvmgEolcG9pwREKmKCzbN0z/vLk+Lxu2hSa+J34kC67IKDI
	 HLGhJhqDhFWLgelmigXVwE9vbNE4NxUfwlyzsPcA/fMPT3lPcYEqvIB5n7HgxWp+IR
	 +0i+/2ZoVkM61r4G1K1+IJIx2iycn7Ijx9y4yByruynpTMY2fQfpNjUI8AmUhxI2Zh
	 jjNaypaPsLVr3S3l1rNj5RnOWQMDcpnxcKV6fbQPtXhInLPHauydCitzHrLvLueHLH
	 cLFLJmRsRW1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA76DEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168743838881.25532.11042323881280978110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bcf2924794503e1cb60df17d24c8882514fc32a4cbe5eb224bce89bc256a9e
Date: Thu, 22 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687438388
