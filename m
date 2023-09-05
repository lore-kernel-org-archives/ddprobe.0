Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BA6D50C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA177C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693920248;
	bh=GJaMBiIjqUz5U59z3eCoB++V0MLZU5TIR5ApGjev2Jc=;
	h=To:Subject:From:Date:From;
	b=DNxJC6hA3Z9du+Tn/TocAVYXTOuHhqnG4ZryjGsBds/1mCb/5sApux2Eys/1mVnRR
	 cNCzecu7/NaFQ6u5Rk5AHqojmj47kYsK9a6xbP7aJSdxcYeLhAiuVni8HgFGXpjX0f
	 sZTInrmefgaO4Yotep47/YHgl6T09nx8MoQ/lz1UH/tkX4Dl9zjVUApevbc5KGQhSh
	 hY0QXfZgVEDljr2X0Hj//mnu0Y8bURAlMl1EIjnqof2McOGvuq1o26Euzxw7aeWJlZ
	 g1Jr5KOqacci/CORMBfSKwGgT0YVcGcC45agtXgQrliWrTZ0VqXC/8Y6AyMbPuIyRu
	 RbmBEBMEN7Rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8AC83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169392024869.31095.16790408131189964101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d6f2e47424f173245fa58fb27fbc95f27d19bc6c361088dd07e2a29da34eb6
Date: Tue, 05 Sep 2023 13:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693920248
