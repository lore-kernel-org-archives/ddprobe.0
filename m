Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246D54C3C4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnmDV2zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98031C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703575096;
	bh=BOYbCs1o5P0kbEdeqz/UFKGmoLtq6WDJBlSCZs8C3oE=;
	h=To:Subject:From:Date:From;
	b=WnmDV2zboQ3nhoxA1x/l3BuUQMnlYC2SEMaJ1DHJtFz71dB2SaacroDYYumMtSTD3
	 bobuzmOSpm6FtyOS4cvPq3Au1UJUPvB5Vv5vsFSTkhUKXAw5ri64uvt9d4KnD9t4Q2
	 nyQZz/H+58cumjLPBf2F8+otRn0ayDp2jBblIjXoRfu8IlydA1igPMNKrQstUO8mIe
	 rRiBX/fGuvcfaM6kj/EqWdSte5UjmUyM9D+Jdt0wbOs7dqvmNeBdZ4nEM9PGZ6FORk
	 JOXLbdi62Q4C/Uz7NVRMOtgWXyrc0zbwlmM1UIadsRTOdxujcT3OWxw4YS4HHclnD3
	 y2ZLBIk4+B/sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78A1DC46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357509647.21160.11202409494062193521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45297c98d219a3ed698e6e813ea13b8b8ec0594db8ba9bb6fe626b2f18ee987
Date: Tue, 26 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703575096
