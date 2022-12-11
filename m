Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C8C3236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8780BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670794887;
	bh=I3ELRgyvlM8r4z+rqcJzbzR/vg4TXcVGXue/qt+2I4k=;
	h=To:Subject:From:Date:From;
	b=ajCGeOeMHnvAkyTyQqAribldEOoNNpVYmRQae/68NTv3NCUOM9J1FWmHXB0hK2MNW
	 Q4I1GsLxGH/NPSqwteBaonPBN9ziZ2npHK2hWVIUk9nTqc3Si7qyAEl/IH8et73ITx
	 B2qAepvsHU2BMqEFhnEJCHZsB3bW+ub3hTUjhQ/uvDJ7tcVlmnQZI6+c0+JysXH7lW
	 h3bQeejlASMQPp5XwIlonLTYwslvk4joJxvXqZpqWAogH6IBW01lWsXb+h9wcVumy/
	 aYHarVN0j2fo72ygVo/00inIIZdB7YhphsPg7V8Nz61fqC6Q2F4Sjtb1DNelTqbfZe
	 Ey6/pULGXCwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69256C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079488740.11566.11886211026155351085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606aeb2d03f8279e80bc43a6b53e9e44143b0b73fa170aa7cf8cbe9fe7257b0b
Date: Sun, 11 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670794887
