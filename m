Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C796FB0
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1CDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668294054;
	bh=wUQBDhvzVFILMETeVNGK8rIfrewBR2nhQfBEhmH5V64=;
	h=To:Subject:From:Date:From;
	b=gbPouHoq+I6FdA6UxNUjN9w7SKBBKmtb3kuVYMh6mkmvQh+w/Up0oteUgaH1D0JCm
	 bJA0ZwU5MiH+I++mwO4oUSNthaAMMHg2Q3B7OGYgc5FiHnmGMrWX1abC7GAfx8m9eo
	 TE6z6/J5ynJAITZwvT5+sx1dIzVnJoCOhTFVaORNHJrbd8h7uYOT1ALOtzqvi2U4iW
	 Fkv/KGzm/wWyQovVKKJJrSiKU2KIL7U2eOMrDo4ViWjKVfZt7y4I/1UCsZ88BWluEL
	 XfoOAzNiXxh/ReXRgKB0JVHT2P2E2LJp2G4PfPJmelLd2iXMOF82uJUU7FK1j1qN/U
	 ETQAPeCqX8MWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F40C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829405433.13313.3515088096499849767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b7a27f58584c8bb7452050bb15c9a2231de84d345b3724252ee9492e065cb4
Date: Sat, 12 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668294054
