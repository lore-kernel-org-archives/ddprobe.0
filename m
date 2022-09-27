Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B083F65E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65C1FC433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664267453;
	bh=bv0I4dF0P2BmTzuJFafyHTeizTD/Wv0QlXIP9DbN0js=;
	h=To:Subject:From:Date:From;
	b=YdAqEXk/fvcIQuqRC9sIIFO0psNaGodXi89tkUW0k9+AsyGDOAv4Bem9qcj58qKsY
	 nYtgUximqdvNloIdL1rVh3lJSGT2HHpQeQNMu9ajpQdpyNvTpETdA2HyxdPmXPlIIr
	 LTXuPA7ol8Isnh8/qEpz1VF80/UkNmZxCfmDnRh8qfRId/QPVVDWzUiYU+FmZ0qIuR
	 OFbeFxlhsZsP3MqBkMDFE2OOIhw4GRZoxLZOA9VX2AjE5oq+egAizM0GfRLDCT29t2
	 3O5GkhwIQRBHB4jMoP2rD3UJwT2/0AVI3PwWqO/rWs0GeYSXjVL9LBNY/vp5v/Q73A
	 /z33COWQYvJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAE1C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426745331.22652.16033745655813996908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dc07d30909240a539c39f6e2b152bd5165b535b130b3dcab02c8efc6d4d180
Date: Tue, 27 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664267453
