Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76295182
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 00:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D663BC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 00:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696379768;
	bh=Pt3nDRpbCFrJ83Oqq7B2h66kxDZR+iyKoDRmQzdVk1w=;
	h=To:Subject:From:Date:From;
	b=hpzmb+QZ+1FAZKUScu4bXlUiLnzf4k+a9dem5xgJSJXTYYj6wE4Hehg36kSQvNUmK
	 K0OPs+ijtmwshWFI4FEUlZ6TOu+Nf11gXRWWrXv0vl+7MbhFgXlHMFSIN921EcNrx+
	 PLAW38r888cdl80bgOjfG4MDrCz4UwrSRkv+X8ZvlSvbkEu9nD5ZoORfYTrkAbtkR8
	 Rstwx594g9BcWd/wsX1YwBwH0A7jvh01viVJXXz9X9IXHwKceA1sEmF0tY8Ms86+Y4
	 t+kQMqcvWpkmYjYQDksPDuAJDwU+HiUuNQI/1m6h7n/mldqdWa8MbHTnVVp5wnrVvu
	 SutbOnCKdSDcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77DEE8FDBF
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 00:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169637976873.15218.2450371572356776536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea63669707f254a5e48313ae466fbf4e3c69bd97009235c57ed3f9b7c3e78488
Date: Wed, 04 Oct 2023 00:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696379768
