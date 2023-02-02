Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0B3210
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 14:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC8CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 14:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675349765;
	bh=5q2pX6sVxzDQ+QBFB3YLFSQHPD4LuVEee5eTgPVcYXA=;
	h=To:Subject:From:Date:From;
	b=m+bVTBWRapKidhf1bO+HfFkWBIMQNp6dwZcUUBp5b1cUFZd28yNLRAvvdVwMgUz4A
	 5Kr6dyCTX6oq8dRZ6elYNvgmZa5ZYDssbGwd9lwsTb4p36G71Q8h3d+y+Z8CYby0qz
	 mUPB5+OnTMDFamIGCT0vFkjKpjf5f/42yvgADGisqZyQfMmJIPY75oAwPPRwV9c1Dk
	 w5zzZWOPGUuNAwYj4H+YKxXqTTlHsDrWJ60mB7Bu6t8BQJYQgOGUOvjJc5rTk3weTQ
	 PlzAZqZ7WBVCUh/xi6UMGGynToDR87VlH7+A3jBrkHFOZkJ7dXNDiAGHZZ7sjWzote
	 KjYzBgYvL0hdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DFFC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 14:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167534976573.6315.7680037704454718311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96fc362d2616df14c87fa0f42d5514a50089f06af806c8e5262ea970ce4dd2d
Date: Thu, 02 Feb 2023 14:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675349765
