Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BCA6122
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF816C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687792388;
	bh=NBjRzw5/hS2lCBKkfY316cXuN2TbV+6YKkkLCXmP5kU=;
	h=To:Subject:From:Date:From;
	b=XNa4py0JzrPo87p/LyV+8A1CdAIwRKdACRzOtTBJvtFpucPiKgeO6AN36c5QVB2QH
	 8Q795OmINgK+nLbXhLA25a+S/ZSf8C49RM94o1qkVuHGnNmuCEwJiJGdp2hwOY9Aj5
	 PEn2Em/rY6wfqLD+IxmjcoyAUfvqcfKZT6X+hgZ3LWYvpcZs0LV1qwDnijOYSpNRc2
	 HjhK2BIR/LlycaRjKtLsfiRPR67m2arv713PjcBAuw/NW7GhBW97Kxkn6Qn5rwyUYO
	 beQ9D/xgcS2FmVWCJERNwC64UHZg8cTdeuJO/V6Pu90rZKMi+GQyuePvVYRCiufyqi
	 bG9patw/1FHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86FEEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779238874.23988.13230176697151990961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcd30e6272b59386c1a11642d781a34b84d62ca4ea416518668a17fdb8b0431
Date: Mon, 26 Jun 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687792388
