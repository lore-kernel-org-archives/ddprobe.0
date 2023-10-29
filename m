Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2253211
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpqrFExL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3016C433CD
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698620896;
	bh=QnNB6LCLIkgifiPI1gkzZ69J4cPLf6bGc5khFSShf8E=;
	h=To:Subject:From:Date:From;
	b=rpqrFExL/VhM+z4Uu1Q9Idav5m9Xk7Kirr4tA+3KQXB1ado9tQmLiL0nDVz2P10EH
	 mKDAvUWLmlx1/yqjDiQIG59Kcf1YwtqVnLPm0rP5DiV2KBrYTTLg/wJ/246CdDyBZK
	 C0NRxZlVTAIhCUe+j0qe/1NA/F5a3BbQNc/ZCVjwZxvxIkhKITkmXScCqOwHNDIhlo
	 SjcrTFOESw74ABy/UBDyPrjSqVJT3pykjbqPrCe5C6rZKE5WYQmfULQpX/5kxq5v17
	 idtRtQ58GIJd9WU4r56lYFOFkAnO33qcw8Mfy8PqZet1i2Ttlg4yfgQxq2EWSnp5JK
	 UaTx3eJOiph4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D689C00142
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169862089643.30734.16035443968085355343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4f58a077b7c13116ec6f01e62f691970d9d1ab42fb1f1135d4b6a61e892d37
Date: Sun, 29 Oct 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698620896
