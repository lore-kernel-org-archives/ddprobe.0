Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F01C20F3
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPe/Y/0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 968E1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699601896;
	bh=fbMBT1+/9xJ7U7mYRTcw1vR+NKK+ZyQP62lSko7Jt44=;
	h=To:Subject:From:Date:From;
	b=SPe/Y/0fCTl30yzyz5VJfVObdfaK3putLNzoJCXaFTpBEyDuUkSFSrpJlgsDfXJnS
	 314a9aXRJoqPtLYHlddUTtD4UiUsB5Jw4h169AzFM2rGubE+IIJsCAnVBid2HIXlRv
	 9e60Cgzx1MaErutC4QsNTl1Dvp5altSHKaYtvkPiC/rIN7iERryNmtMkRzxcFBBEvL
	 p84KKiSuXKyeL3Igx1u9tYQkaGpaXCJG6rYgkhIITQ0dfL+fckU+QppGMRuchxsNhB
	 ds/8DRRNgfmHUzu11Rch38l1jVO3VVTAfwyH/ctxCzZwRStg0UfFpfcm0wzc/M70C1
	 PG6GTKzXVXMaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79059C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960189646.7492.9892094237402212762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a062e8110b1bbc3ff43cf7da1d5819509f655ef8d74c89fa94b37b1b0bf404c4
Date: Fri, 10 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699601896
