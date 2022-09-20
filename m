Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A4410F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D704C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663660853;
	bh=Q0MYBPVOvfQSP2qrC1X5w8vFb++CMQ3iRshOa2PxjX0=;
	h=To:Subject:From:Date:From;
	b=VEJWLO2tdt1Qgce0yINl5sA7VlVsy26TjNRo2rnirrNetTw5rhXQcLGPCGmKmch7o
	 iLlMoclnNFhIIIBxktMKhr4ValyeleUfVxelthk/XXZI5tzZrdTUa5SRu09hxZAJHv
	 HHXkF8FBbBHiVE0w9txdnL3qBFfcXRye+ViL3dYdXHzq/KHnr+xHH4p7KCT3O0Nvab
	 xAN30vylb3TXGk5l8/pqyrDk7lhV/p9FtQFHDieue7boDrlod3lgKRUnKkY2e1unwa
	 Beram0dZ26vsINWpBNlB+QHhAtUT8tB39/0bpidF+ZbNVKNk50OcQWX/fKnL2BubZx
	 l5HutyaFnUR6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543EBECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366085332.20328.13593718007870751905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58915aaad128fbad5a69d5a81f02e54c0986f9ff819c0262cfd9b707ed8b4634
Date: Tue, 20 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663660853
