Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC40A2CAB
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB78C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669063254;
	bh=y/M+v9mp9IeRpNWm/Ol/L1nZ5qBR1qs1H/l+RADnB14=;
	h=To:Subject:From:Date:From;
	b=pAqFSAsxE7crt4JhJC9CsQWj7j9AH7RdFaTgIMV258gYHws4mmMs3l0l/R8mcgcn0
	 IhO6Zdny+x1wjGN5Ydyq3950JpyPYrZDo620iPsZLjPCxiKJH2IiuK0C9EqJErwEmH
	 B6QvPAXn7GyfQlAWubxKAtYG01c7NUISgEir1D7Fqxk5/6UxKzfMigMObNusoTwJ6e
	 MtIe8c/Q2wXEKz4p3dnz+xTtEfUtnDzEF4GN1fop64RuWB2kuDRMkngTa9knHz1J4K
	 LOA2lmGbevbZ+bVWMehz3Jko7EWdtkBXxcIALgsgbKY1dYScgjz34E66dyK6oZzaRF
	 KYottJJTNGTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CAEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906325434.30000.6816071658082397542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6f6d0c37c47a9d57edfd3e05567cc56a896b822695dcfe778eb9fe58e1daff
Date: Mon, 21 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669063254
