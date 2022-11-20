Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78771364
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B495C433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668954054;
	bh=ldam0cpRmHGXVBVyFOpodbWi5G+80bXRtmgNwhx5Zxk=;
	h=To:Subject:From:Date:From;
	b=sMkArYaXviFi9N2Um+x6lmBEgDZRSpVAdjy8NFRTgG5fF3oE4qLkIfG8X5x28Ejvq
	 fXqWxvNfINSLVb3jYU/jvaECN9uVw5v7Nmkkk+dwQkeRhGPI2fm8MIQk6V6slwrKP3
	 weWGpmBiDoweImZpgZgb5LpUM/sYm96H+2Bc7onoQfSKMM0VXCA2pRYDJgET7wGHRk
	 BHSgED1pmPYVdPfdaZF+TnS3wv6DlEbEdm8Bg3yMTa4Wg0ktYC5EfKDmHNaRT4euie
	 0h/cZ0ZqX0yD7zLbneuVIOM9pS9FVBWE4zDJ1h+3qy1RKm18P9hm1JQbSoC0GjLv+0
	 lWyTo8NhClXvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA1AC43219
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895405436.22260.9878230542725348286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a47b15d8fd9a17cb50a9c20be10d59edb7db05a144ab5ec11eb3811f838492
Date: Sun, 20 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668954054
