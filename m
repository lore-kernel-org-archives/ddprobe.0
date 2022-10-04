Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2533C1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7497FC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664892653;
	bh=0bqT/oHc0wvJdgZMzohEp960eg9ESBtP5rUi6gugE4U=;
	h=To:Subject:From:Date:From;
	b=KGMvSp1mUE+v5Yvbs1ZJ3of/BoBQKaRW3MovkLDGohhyU0aMvFCbJCSZsDgvWJziX
	 VA+CB9vvG3pddUYame6bllsnvxyDfjkajmN4TkRBP5KpnHTNwqZRAadIerA2UtOotq
	 GH+mswV5v3mUxxjtyOAczAyFsNXunftGr8weqCLzfSDCCCU/zqNhAN0Zuc7JgcyKBs
	 k/jYM59BgUs8f1/EcMwn+NVudlWOofIH6sUioi6vD0EWoVYnOCAT7IhEhUnN7a2ZoL
	 UxCwCOxtbgvLfYSNAz4zZsXzahI6dxmMx3D+6naYq2UuMqkToVO7VyMaUQQPZBMgTa
	 VyCZRmiF4ZScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5784AC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489265335.9269.7558662982137191528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a2102379e9b01ce974b5a43c48d8a5cc0c25ed64cc595bd101e8f374fb99ec
Date: Tue, 04 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664892653
