Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BD57F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C35C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668582054;
	bh=e2q/cyGacgn3fT/Si0Lq2n1RczcsBAUlwrteaCSFa+A=;
	h=To:Subject:From:Date:From;
	b=q5F1mR+XbR7y153D9hcMiNhi6tpfWv6Xl7MnUW9HJyv4LHMu+PwDNQDnAxXzz7047
	 1J28B45FDLZTbCvfqbaFVxh/zdOTS6mxYijLVDULYMhbAbj0+o3rKjPltwIJlapJgt
	 jF/VQV3f2cLQFpYOyxNWtncqFIZdLo1MnDQfLCQDQvWaNUbx+xq1k1JEpqphWvMIAN
	 wEiC1sNk5HlvTaxKlkYZ+Lc+An8LKPTw+BgKH3EBHA2bYa5JVlbW/cVL5FIAVQCSja
	 MDR+kNJR7oMyoRfW5+xak6XkukVNdtttm8+iFGFVmXCC2/tqKaTM2m/S8dLg8Z8p9l
	 gSqCiZCGFQcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57955C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858205435.10385.18354350516609981313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6444e1897219da3e3680c5b874fb4cda66911dcc8da09e67fe6694763c151c5f
Date: Wed, 16 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668582054
