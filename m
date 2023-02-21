Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7044410F6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13464C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676960346;
	bh=OnJhQMaZdHMCBCPb4LkQSsI64hWuHtlAgZZP9aeZrik=;
	h=To:Subject:From:Date:From;
	b=S242VaY2XUhTxYPeLw6w5pE/KR1gSBHkqgumtZy6/opwIavjkbrEhSo0DYq4vDew3
	 t0ud8ry7S8P15ViV3EK+0l1HIe83uzpj+RwovqzE5yQwMT8EStFPb3k/UCWRXFxl4g
	 C4vdGxQCdurC+jH+ILPu7V83SENluuVzLO5UmfWZYTykl8p7lLrZ2ddWm85xGAbF7a
	 ss1SEcNo5qeOiH4IoZUBT0/dOG6n4AAgas2MczVF51vk8l33/sUexo+NaM7RqGn2kY
	 nEHxmCCyi9UD7TZKlZc/NBx3R6HtQ8O0s5+Vd4k+S0Z06eTrkcjkFVMZuirr4YErVV
	 U0b50Z4mIAU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8380C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696034585.15308.14353330650486096343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a588021581c5679126c748e1d5be721bf98c10045e715554c1601f22f6a1e7
Date: Tue, 21 Feb 2023 06:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676960345
