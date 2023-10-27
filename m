Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2960A1946F
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DweHlWai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E14C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698428896;
	bh=uAO6IlrhD4yYa6XKKoxN4KR8VUn9CEl3IIXnmc+hlc0=;
	h=To:Subject:From:Date:From;
	b=DweHlWairW6pa1D8pl6P0Eh50ilhqZaE7k+cgF1WjmiMw/IHympHYs6H3HAxhrKzs
	 TLnltM7JrD8Hp9rpLLhgSgyZg7yY+XBYMU4LNmE401/ock1nWzzSSZ9lSwJ35QQjTC
	 91FZUOuMviw95Olf9Ir3SJjpLmf6BH+ay0FOJEX6ndC3Tw+a5dlEWmzGjJo930zQk0
	 l22AiSQ5gC05Df9IAuyaSDRaGwyeHa76ZyhymI9+qwpJ71gQlkKzs8vROX+xMZ0C3B
	 L6KoUMOTRuYK5k7ruONNzPOfyDF0ea1uTIVZWoPR/zIULk0I+6KCt6XelsyH707nvX
	 K5nGp+Wmox+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672DBC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169842889640.8946.12680172520781182537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58aebee7be2d301b24a6c656b0458bfb3d829e6dfab46eecbd0a26aaf69dd4d4
Date: Fri, 27 Oct 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698428896
