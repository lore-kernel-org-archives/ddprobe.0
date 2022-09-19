Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86647EE
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EAAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663583453;
	bh=hZdl5oM2tepm4s/Drpt8WUIw7E+D1cFFVrm2wbgHELQ=;
	h=To:Subject:From:Date:From;
	b=lUDqUJiW2j+D6Z2mQ2QLi5bgwycuJ6EjWV3Umpi7fVGiflNjlj7odhGEFSun7cOU+
	 B+6MIjfGPfBG3ndX+P+MMq9C8efot3rrBEVLnIEsikiNkCx5j9B5En59xgNk9W8woZ
	 oQ1VtzPvL4DKYvEG7D46s/QL3oEsG5NL5PAEsveGRNVtDlYAwaoELmGUpbXJ8dy78R
	 SXsUDgCqeh3Acudo4hFhY6NmUOcome/76GdsLszGFBFKIhasd368VPKtKs/KfLF9B4
	 SW/hqC0qTIhbNjHDlkay54NjXDXiSEWgDDfPH7x0zlG/4+xuaAnkpSkPy7qDrmLBWG
	 8X3MY7fW3/+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3E5C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358345337.18597.6371270138843942753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc3cf0d3ef2fcf649f6508fd3f161ecd5cf3c0d5a0ecaa2d1902674e6cced44
Date: Mon, 19 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663583453
