Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D93EADF
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 11:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5Hsy/w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D55C433CA
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697284628;
	bh=+KdyIlJglK3HbXgF0BS6wX0O7yS6wQikg5O+swPilS0=;
	h=To:Subject:From:Date:From;
	b=G5Hsy/w+2OEej5ETIhfxctyk+lQDS8Ix2wR/X4PbgPMP0meVkTmGfWXuuzeBQ6GZB
	 6DPdWFgNN7sAIt67kCegXCtQlRt1ta4WHKeZ+nrDxRwPKXjpcOkEbmn6TW9Jq0ELxn
	 uHMj7B7OWSYx6poi3VOPgNmFISd/oai/hLpAhLu6HhEHNAqF1e9KgCZ9FuxZeLMG1I
	 nJcH4Xk9e9UAzE1Mqi7gCHGcqnNn0mz7Yq29hgr/qHZta9tOA4rcYE4uE+/qqhHHRU
	 6sQ6Qmkm2ExZnBrfMil6nDlkTUqf+wRCNF7f+7uUZTQPM2vQzkTy5w2uQxVryGBDM/
	 YoEVtQDH2s9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4913CDB482
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169728462866.12214.6941357918147600789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abcddb6ea347dde6d296fa5dfc12f8d68fb18e2ae428127e2a27649913daef7
Date: Sat, 14 Oct 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697284628
