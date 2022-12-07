Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06CA366
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BE4C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670416254;
	bh=MYu1N5yxC3jLMz0vUXY6De+JdODmHQ0LhR49qgAxJuw=;
	h=To:Subject:From:Date:From;
	b=NZ9FgvLgQTnPBGizfj+v25WwkB5vAS75c7pKjgVkkpJkWirCqBsR3ab+61HDE6Ysl
	 Jqb+G1FoOTtx2pmCcR40ne+OkwQWszTKOYX7qoIL6ESoctiNf4dSKhmz51gkg1BB4X
	 U6m93WM2v6vKd6oNpeNcI3+a48/sEjhwpBZiOcQkms9Cg7bcE/6ACsgHgm/n5u8F3u
	 D3rcNC6pD8SQahyW6UcTqy+JL8b7nxJfJCfY49QnVxWRjIRWdg0bmJOcxg6T5O0YRU
	 Cs6uRcmXUWs9a1z08Kq2G6LZnXsZrWRD8JZEvpuVNJ1XYiDGilxXRKn/n3Coo9JAsg
	 py0pLu/xUiXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FEDC4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041625436.7267.4237627021367559539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583c0f4bcdd18f76eeca057da7a6130533c1b748774270369323654842acb9e0
Date: Wed, 07 Dec 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670416254
