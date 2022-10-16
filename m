Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77432CA4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB06C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665945653;
	bh=oR8rdNF7M0Ui7FemLEeR0Iq1z81V3YlufR8owhRW2U8=;
	h=To:Subject:From:Date:From;
	b=FVhYl0NlXs3Jd6AGkAT0Vo7J6N4BemeebixVg2wV6lISitdL9bpkwGJBF030y7prC
	 yHbyzFSdCRXgosBIkEvGHPwUNzVeOlVhAbdrKNXcJKSTa9A2IPXYJKSKopkyPbUmys
	 MsutJhsXG+MuQO/GESapSE1BSZdvsQgTyg0hv5e1q5Nn7nHQCWqfu0DpS4Gyzbfyqq
	 4LoUV+7W35gZIum91QtaSymsb7IjSXGc0xacxrkbsljqi8Pm23Ue/42lZSmu/kJdri
	 0/bXnsIgjvDCwlRCzdBNlE5eOlvu24kxm3BrIJH1LD0+JLF3H4EzrE+Vf71qy7dmhy
	 C4NzsfhKPVL9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA07C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594565337.19357.13108810231698344350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27b91bc3797d7092d0df311f586e7cf1a27023f5c4985439f50b9816d05c933
Date: Sun, 16 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665945653
