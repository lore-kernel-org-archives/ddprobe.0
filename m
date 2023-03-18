Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5370C63B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 03:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AC39C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 03:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679109126;
	bh=7tZoeqdCsMFT6I4+AeGrSwNXPs5YiXJRdwVkHqp8qzs=;
	h=To:Subject:From:Date:From;
	b=IsOYRiNp4KjcBDaYK3Fa3BnE4zsSZrSCW53wCFZ7WvEmnoXJqRqjps+Q3EE891rD1
	 pPCj5nEylsa8OgYCtkfMstpK8KvE99bxBjU7poL6oymivdEaleEcBmq0KdkpNAfcX+
	 Ykah5A6M4QY6ub7lMHdYMzyw6Pf7AjHGQJgO6QiRsuQxaEk5a/6CrvwPf+/KV6HjnS
	 YOlBkSjgqeu9fLxFiHAnp5UpcxnSwInybg01g1mPRhFHi3othd8zn8jOuLxMeXbNBF
	 bomZj9UR8pQnm6HPacvnHdGroUcQG6vW8iwvlYhMnXkbc0zVo/kcOgoojURcom2d3y
	 LuxMWtSRRRxPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52A1C6FD1D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 03:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167910912584.18110.12112814177069675897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7a524728c4c36fff821bd01dab13923eeb0e73d3fd5ad0bc5d776eb7a665cf
Date: Sat, 18 Mar 2023 03:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679109125
