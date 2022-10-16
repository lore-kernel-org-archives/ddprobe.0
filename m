Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EEC10E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1ECC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665927053;
	bh=p5nWfqUT+IC6K8lcxQJYmMoQC8e3/wwfCpBdXkgsfj8=;
	h=To:Subject:From:Date:From;
	b=I94F3N7qDbTTvYjmqKm5Qj44LOwAXYE9X8SCpdnhm/UoQSFSnkLJRhhwd90F5QmBV
	 BRgMN5F+Yi8QtLU33tJA7nJrVWCwb+pX+1r/1+5EOzFYfsDpE/N8DxsPO9wNiqs3jY
	 Rzvz4HMOVi3QkVoRg5xRCZe4lyiSfSmiCHAPVSE+/jHs7OCga8Gy+cCQgIyzaQINDc
	 u2YghSH2daXOyg/Hcg8alNg+oLy+JWRIISc+Yr3EgLMPnw/rPCtAHWXi9tvrvQUS/O
	 FPfPfNE2DU475GxiNI43VLkCQk+CaCMvqqhXnEO189fnII/mALNQQ34VVCrp4RSIFn
	 7FSJR1yVdU2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579CAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592705335.30140.8722898977809073751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3032fb8d3fa7986b62166bbbbcfc209a30163adde594ffb142316cedbdd22be1
Date: Sun, 16 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665927053
