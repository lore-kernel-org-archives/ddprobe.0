Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACDE233DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65EE7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663078253;
	bh=qvTMnEsW2uh5zU14zsE3sjYL9G1dzod/c6BEN2+vuNI=;
	h=To:Subject:From:Date:From;
	b=NUdWCSnQcQKakJDIE76hQYAq+zcKrEQ4n8yPL8/s2N/9AOcirLBIfakQnMH+6ti8z
	 NmszwxkuYX/RR1Fq97iWb5ma7QFE3TH83/gfP1CNAhMevotOKqibl26JhZi3ghjai+
	 H5L/2YtzANz9YIK3ydqxtfcqbl/mAYDJtkwirv1c8Hpz1gw8A5qJSfYuyaytI3PhRs
	 Kbn2f4+Vfs5dGnguHAOLa/PstOM2mSRvrLWN1B6+RrWPhpOzXHjHb7Z3etp+GJCrcl
	 sHORcGCchENxU7/2c1vqBt41d3ckMi3ITuba2oUzI6dwYNJzciqfCqB+WwCD6EIN6Z
	 G3SrrwZIlYfIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E502C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307825331.7081.5376455942769835423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965f543676db750e9cf6c96fb77eb3143d0ee7af016ad12520e6d229e5fc6be7
Date: Tue, 13 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663078253
