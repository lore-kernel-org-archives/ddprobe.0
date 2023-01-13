Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D2A2F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95022C43392
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673625087;
	bh=9+XlFToCUenGu1sGnaEENtHi4VYedNdgnY9GJbbHW8o=;
	h=To:Subject:From:Date:From;
	b=azHPguWPyQnbCAGq/dXXc6oHg3HofeRp7nEntqG5CAtEg7gBdwZA+F8QzxcETyDeH
	 Y8pT1MVOk/XPAwqazkfbOU9GUseNF043mtVY+GKv7dtla0XGPYygI2w17xerOyRvGN
	 0XEa7iUoakI5Sq1kY9Dp6e+4klD8qMxzCAoxHQryOq331PUYCjIgr6guSgwtdlM8Ub
	 EIpVPSb3bFwJSAX0VtqaJCtw/furokSdRC2AaVTxA4IJsKegTjDYxSKsuUz3G/9eNG
	 kPNGycTxA6ck7skxeGQoKfHh2GOtAHIbHsTiRxO/iyZ18TyjiI/24qOb8q/sYyQyPc
	 HzzWzjppUz/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B2FAC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362508748.29269.9066113195177974134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea6124e3d7f462b8e8b7ecb667256e0418fbf4cb902ff42017f9ab7ca19945e
Date: Fri, 13 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673625087
