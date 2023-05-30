Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E68E3D74
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86A3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685423525;
	bh=6Ct0uvOlvC/MRutoZo24fzVw8MBrP8XVsWTKfGrphVQ=;
	h=To:Subject:From:Date:From;
	b=Yjsa8afPL3D5UIPo1E1l7moVbss7/uygP635J0Kj1cJCISrklloiSIxkwj3z9UHkZ
	 qJdQ2y4BUn0/z6IetAioyAS1p0+EIjxwXzRaTVJoqJdAX02PuJuSQl+MovIw5g7yHx
	 ApLSk2l4lFCMmCvnigtRLbTimy6Z3j06l7UADU224jVD/KZnyINZcHE+z45BdqlY4K
	 DgRiPXkNubk/kr6Gb2Y85XJxggSWrjdeFlDqnKddvvUv4H3K9K4XS+fSgXtj+/oXWT
	 8X3GRyOZ9Z6L6QBBgGnuv28PQi4pY1GKH0UNKHO21qyyvfLjMcIZGjEdoLtYdmZqEw
	 wQUeZX+QttbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48C6C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168542352586.17210.6161163457790752543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d94c70e037ec750c4046cf809ea4765f2f4a9c6e0aa1d0127b35dbdecd6657
Date: Tue, 30 May 2023 05:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685423525
