Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10AFAD32
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716B0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669678854;
	bh=KdVjGPIqo1HW4PdwpkufppffHk4TOwSaM3f562UH7iE=;
	h=To:Subject:From:Date:From;
	b=moi7NCSi3thCo9UKtMjXQ62gWNPByZ7xKEotDlc0Qe/lqltH3VQi7h3Sede+sJAAO
	 FndqU/zlaKuIBb28WTewIlCh11TDnVcy8WPpeZMgRVCneEb/l91yk9MBBsfKtY0xe4
	 lR3TN7UgDiT/T0MCxvFr+lwJq+JOgfQctwKf61CNggy5/KyIsoPZn8Ipy+0bGSpEg/
	 LFpRWlPSNyfa1HnVZeCeP3MHaDYoiwXU2m1HQctmifazOgy4hiREAgcZW0c78uynW5
	 Noje6jYsJ5Op8p2n/u+m6vi9fMqXsEVwKkSKkR6q5+WlVeKhsaRXlgVasQFAAp6y92
	 q/XTAoIFGHOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583ABC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967885435.4670.1370199585338731191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87a300ee7f33b4ef94f1b1601c9bf8c06d08c1b27ec4f46c125fd413d74d89e
Date: Mon, 28 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669678854
