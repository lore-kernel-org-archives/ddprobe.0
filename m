Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF101653
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 636D0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664264453;
	bh=ASqBQj/GP8irZiGyrAxPbRO61Svj7dIjAhaYgLqNNcM=;
	h=To:Subject:From:Date:From;
	b=PmADuqz34tQdrKyLsbyyfO6v/9bl8GRc/rSzQrOo47qeawVwuS0QMWJVIxTXMRKSs
	 0iXwCtLhAYAEQm+mIU8moadRhQz4TFC907lxWv1cCawmRuf9A1Mp/tv1BrwOtS7QXN
	 gq++mkW34YchcuqqjE1rnYuhZkPXZAdSK/lZ5ycVch1EZ56A+APao9nHYIr6vvvVB6
	 3o5mGSqmWtI/5ocT2U2k+yfZaoVxpRiO6womzP9RTKfU1rDUlntbj5Lmk+PEsfJ2hL
	 CueLcpbLbu2TInUp4Tq7BYZCC3CBoabdkncFuvO2U+zgmAgCnzhoNDqvPhbggrX+C1
	 9HJQd0gCeyFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501ABC6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426445332.9734.13921859806623244930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147f3f03eae7c03e0f0da25568e088d513e66078fa4fc922541ec7408a4edf43
Date: Tue, 27 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664264453
