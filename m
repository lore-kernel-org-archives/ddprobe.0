Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B8D7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848EEC43470
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667329854;
	bh=yWr0ewcpj0ooQLrCu1Yu8ShFA8HXp24NTUIn+MFT+bg=;
	h=To:Subject:From:Date:From;
	b=ElXSQf/VVlI+IQzf7tMM6PXlZCtdNiLj9k+o+i64SmsMf3e3ZIQUbL7tf5bRK7pft
	 iE/imbwey5URA7/K/drNyYisGXdi0UCbDdQfM88xuRsxiTdbc8SbQ5g6OOUfXANtXI
	 Hahw6flIwpj0tycwz0OlUA4UNuFY7F/5LCnvPpX194ihd3aApI5MnyXhf16dWWpkcZ
	 GWEPm7QkasYc8SuR7OoZoErpwWCBUw9n8pCbH9Swcd266KVnpGr1uSNOq2p9+DIrTr
	 0iDWCc+f3QR16FxN8KQ4bBNaTOiig+X3vwUoK/DFRuQ6odNTbmvG+DlQLPudI8WQhN
	 V6sZwgyoj3WoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59871C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732985435.1344.6545993523504326981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab064208b5c4162ff6bf9481766fb4a0f111278d4cf7f690075986e5d8469e4
Date: Tue, 01 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667329854
