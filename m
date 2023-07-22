Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC88B11C9B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 13:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E9AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 13:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690031528;
	bh=RzU2Sweyw8YSvnmTu91zUKB/wNMO6RRBg/IdqNnrI60=;
	h=To:Subject:From:Date:From;
	b=Zu0eytMWW1TMBhjnYLA5zETwXIJ8yNi/T/VuhxUqubZWLbGDfjQVBI3Fh0kju7RdI
	 f7yviuvUM9PYdItWaeGK3NgyuRQXwYSRN7o0myIROG6bBKcLZq1nnz+Vem7t3b8ZkW
	 4bcr0DaDj0q6OmSEJo5PZr2fg6Nrpu+hBlcqM+UKv/dTpN7WQdMPFRnmeD725urtww
	 cYJy0EZWUUgNobcI3046V3EJ22vnGDshHkN9eEQkP2Mp/u9cJyxbih4Gh3eVmy6qNS
	 Ry0TG3/kQAYW7dKsFg6bbcMALXKw7lrcpPNFxof2F9MGGFy7OEFxNB7bslD3YxhxlO
	 YorpcG71etVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5736EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 13:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169003152867.3640.2545455449861547178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04df07a82acc6867dd246d7cdae71cae8943a37663f8b4cffbc418257437079
Date: Sat, 22 Jul 2023 13:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690031528
