Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE64A375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70406C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664934053;
	bh=mTcBCNFUX1TCLUwmfqdUByTPFNypu6kcHY3OlwkQCQ4=;
	h=To:Subject:From:Date:From;
	b=G/L8g+jAxIMp2YG7fXnjroEHLFSETFRDgA1VHPEHPnthNznBy9BIGyCzmUTqFpDLV
	 hb8IpGO0hv2Yx3fr4k37RiPApDbnjdc3FU/nAurvHDy3nIzvtJoy/79tLBOBsPan8f
	 nsXGlm+YH4YkleMLzEmlJRE37Euy9sG/wDO3EnSUqqn474ZmT3+sX3+S4HdlKZ4a3/
	 Or4f4PDxh1rcdkNU22FPON4VbQ/NIY74j9EXpxj5Ndx0XenwAe5w6AEhehk1ycXAlE
	 83SC91Pk9JQL7qzJTLzwoHl0eddCymIjNw1iUFlB/w0GmcoLcIrIP56tDoGidBQH5i
	 pYc35lbOv7c+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AA8C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493405334.28962.17860408562478873675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924a16b9ab7cb011d31930698fd15354b74db3b331f21206fc9614622f487252
Date: Wed, 05 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664934053
