Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72C110F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68156C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665996653;
	bh=4l42lhI7DXBSLwtPiQ/VpSAG/dekbO6rmhwtvTlqrTw=;
	h=To:Subject:From:Date:From;
	b=QVuObwFApRf0g/p9a4JCNynu2zh3XWF5b537sFmHem4RoE8aGfdQea9LvCNKU+gJ6
	 6O717JGHH3hgaFx7OOr0tKwpbWlJJqRG7y0pj8o9+WW9ep5s1taq5T17evl2WiKS1C
	 0VrxoDtbj6BNN1RAbXMtZyKNZfw74t2aAnz5gKdNRdZ7l6eSCcq1XWmhXoFNMlMkMV
	 A5tmRA57caHTG4nxL9wAEoFCx1kdjioJP7R3eyQhYmcV2K31e5axDFsofty9nJxfh1
	 cYUgPoas6O5acZm6X4gT9HCNdA7NKxsTWpbjkZCkHqnf/O4A6pG6w9TUc2a6CfVpgu
	 VSDtqkQc14Csw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5132AC43219
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599665332.17507.7154439100794718501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc1b7674b5205b73768344443cf53f3d750275d516baf841c753bddfda6607c
Date: Mon, 17 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665996653
