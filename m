Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E894E7C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88885C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670119254;
	bh=j3C/rPcGPKKWpg8cH6rNYMdzfpx1D/Lt7YUUnf4yE9I=;
	h=To:Subject:From:Date:From;
	b=AkAQ/pp/spWD4R9oLct7n0fkh3Bt3ZrK8KNMQSk6fZUJOoFcZd3Apzxfk7L8DhP3Q
	 2scRPI9l5zRy+E3glczUpRBtXKsH5TY19hhXK0MZIoKX91gmz/Br1L0fKFx95TVTHT
	 1uJBtGU2N8ptd9km89biBTQNXV96MmlDeq8Aa2yabx0Bw89SzOUknd7Kljnm2NwSOA
	 4Jao5ETLOOoSKCfO4bRVVmFxvp1m+74LSQm04/YWcQCRZH2QdwLgOsTjncJJ3L1CMS
	 waxk9bOt2ef2ROpun/h+90wyR3QXtELmKygLxSjuzF/KqCURYs6yc9te2amTvocZc4
	 ukrRLVV5haA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A5C352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011925440.11397.3175519717405642836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73c6880b931b41d4804a18074297e4684ff5ac454e5516a6d15077aed4e9eaf
Date: Sun, 04 Dec 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670119254
