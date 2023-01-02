Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98865660
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88514C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672675887;
	bh=a743+dX1hvuPFjgIdCe/ZIUU/E1epIc/AddtWj0/5Xc=;
	h=To:Subject:From:Date:From;
	b=QLqHFTxdWex8X87eSzicJu3ybp5eDJUtdQ9Pkc3UPCAbmI3xDAMG9ZVDAHpdtPHZz
	 JPHI4/fQYVSUH3Z+UK9wKySS6v45OOTVbSQ6I/B4wPxKzgmseOnSSWSMqs0GkrUISG
	 kLlXctND1o97g8mBDstXt9UNDshF7OriUK4yItH1kri65fYlCx7nBmyu/d4dKyHoRg
	 ZKAvWQ7HIQq4O06Wz27cirTEa+JsbSoftXoDCr83PIoLsvOvAECBmpFxgzxSHmocBS
	 Rj16APnuAiVUxb0MxZeA9MPDAIfUMAqmg2jNYLPmnwi5fQT9iqL9GBkjCNh3QvauY8
	 4MZSmjHO5Yq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63589C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267588739.20588.11251375628958329942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf2869a9f3909b6eb4d168d9e28d53b6c1d02dcdb0dc4c338784ba20b3b82da
Date: Mon, 02 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672675887
