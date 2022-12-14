Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC27AD25
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC3FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671039687;
	bh=/PP0VVJBIHxPDsnTTsOp8ziiMgRnoRnnq+nAq7E8kwE=;
	h=To:Subject:From:Date:From;
	b=swI1l9OnMzR2pkNkZL6SJNwo+v0DMFrGOnIReBeELd65nF6y0gAf7oQO/HxfmOojx
	 sfGCa883ggfDTlGJIgtHeyA8egKf78YYknnOOihFo0h43P22ZYQXGeRPxig7iSBDJJ
	 pzbSJz8C7y0b/F7SsQIaanewyFpXC5Itp78NReuWCI5H5/OstIiFKekb0eVII4bXFH
	 Y/ob0D/qsa/LCAtexfZ4ZISqkXULLjLse++VHCnEkgSgTwaR2gp0fmIQmCfufywGA1
	 uV4DWGNzaZFqghKmNKfVMnHE6w6JHpHkxmN6V9uvrvGkFVRn3sP9lHbEfNiHl8Pnwu
	 Oq2Wr3o9IP15w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6DAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103968737.6540.15543804616717873184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727fde850011dff0e04f793b865327b41de3b70bda74c4ed03b01694f52be9c7
Date: Wed, 14 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671039687
