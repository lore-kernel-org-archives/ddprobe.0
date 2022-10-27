Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9C346A6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67B1DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666887654;
	bh=6wdz8pV6KXbu4YeelG+L9WPd4823bj7v3wm7/j+jHzE=;
	h=To:Subject:From:Date:From;
	b=NTNBVct9OgoTDpqYWyVoAukrRJPWZg+OggPBYbFkCPmEOBj8zfJn3Ksc6mPf2S/OG
	 XMJgRM1u4DdMwtZ/FDrKoC25mdw0WsxKzEvUvG78khVF2aH1ibWKKIksktrMvZvgHA
	 kFDTDfkNPZDGH8czwSlRZ2y7s+K+9yOrLcGoZbCk4bwWQ9KA+xpK9M2z5QNPrBeWFC
	 u/WHoJLgezJcks/GhluaG6E0mP+V1j4JpmzofdthvsTpQ4j4TTlGPYh5rVgfNj5FE0
	 4yBxuj1Z1Tglk97FY+5Dl7JX9LFe94kvQPGGa7tCABM1CJgVWfnMlsryqC8Wc2Ae+K
	 NLdO8Mbjo0HBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5126FECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688765432.30027.17711138985918345555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711c01fc161bea3d32250ab6674e1287588c8501d9e4e55a51ba976fea648e30
Date: Thu, 27 Oct 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666887654
