Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5325734CD9
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 14:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0241EC433A0
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684245786;
	bh=fVxEDB3B05rIQ58PVyWr/SCfrmQWMvmdoygkUrSFuSE=;
	h=To:Subject:From:Date:From;
	b=gHY8JDkNOnpqa2cjKYdcw1HoxxeZdF3UKM1gFjPPMY+EY20HSlGE5tW+drB4KW/DB
	 4M5V19+9eHS1xM5xxmmE5HTHgHHmKHjX0iO3XOSawhcn1+Ht5hqYHUVndH4fxvj23X
	 gEz6LgjWtVb/hXphiKJOcP+UB2vwefW+OoXmEMtqn0lorqGVa/axShOhpWbrCASeDK
	 p3sGrf6DSEq18mYhifO7aFeARA7frN0M2oZ9uPduweVvRPV83Ch5R0uPF3lcln+gbN
	 Rwba0jPcOv+7OKGCRVjK7l+m+BEX5WD/yjuIHQ4K+X0S5e1VIwCB438xxKPE+qBD16
	 +R4K7OYIHDIEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF10C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168424578576.7595.13818505411440146492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb07e826845c6f8dad2ef7a6c02aa3dd8853d4f7428e7e713f8aefe078654941
Date: Tue, 16 May 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684245785
