Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44632567
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C32DC433A7
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670922087;
	bh=3U6wHbJ4GQz6Jgs422c54Vv8q5LVdVpiAsbSr0De6Sg=;
	h=To:Subject:From:Date:From;
	b=MuNpXTiMNrKBX/PIYI7NXOHl4Fvw5u1Nqs1ygI6pWSMacuTstWKpuwXfrSnEyh+lp
	 IbNpDrAA7y6v5PvXwFprnRWV0EcOUu3zf1FqBnyHEOSAVQ68r8mQd07zoWGgusD2cX
	 VeunK5rIsmrfTEadg3sWafebKhntz8vshDPV709i73wBY8rMLN6aj15gr6kJ1jAYiE
	 Iq6J+jMtB+x+rxy7VZSIgypbPuhsdiUTf9iyYfBT3yQCx486N10SIbuB99MdgddKmH
	 PmPvrm8faHjlJ4avP0PsJkPKGn0+9QqPw5rGl8z2qdLLs/0LZLp7gu/FadsZt4Zn19
	 nkj/MqGJG67/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649F4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092208740.15393.13895045602441412039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f1ae5870c3a3d6ee23b1172d1c9df01902c27e77e64514748f21a7355673ad
Date: Tue, 13 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670922087
