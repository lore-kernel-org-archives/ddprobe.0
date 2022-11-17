Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ACC612C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704C5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668696654;
	bh=+ipjfWAx/GP0zVbrFO3DjtU/T95rB2O8W//JY2IIvyI=;
	h=To:Subject:From:Date:From;
	b=ssGVuRTRy4VoCYAksuny3UhJAvu//oGd9scn1rsvdfs+aKufAV2sit1SiRF1fg7fD
	 lE26GmeTRKWgql0PEs1+SvpTpNYQ49Q5/DTJTxh1+YQmkYIV/auxfM5/Xq8DOQPzIH
	 l+kRhUWZKWIDYeM/tnBJJnLPR/GpXjcktBzS6o3y88WFBrbZIPi0KoGnQQccRPh6zm
	 +BY5wZ3TQu4VUY2TMw4mSk8+SqC7bwlzOuBOgkH7zbC9YWSuN5c5xEKFNT/uwFtENv
	 hG6IpdG6fhcYfxwrlcxYoEbzgbKq265PaBV6UUTFWexmjh0/eyv73E9DnboIpY/gOm
	 y0LeIUSfMlnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D91C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166869665434.11281.7780554180964587544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f62d57400fa16631f260c4eadb570324458191b24f53b1b45ce4c5685b9f095
Date: Thu, 17 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668696654
