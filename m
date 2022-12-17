Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C84622
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919A3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671243687;
	bh=vdHstdXDsYIpKTrDv9qzwYG2XpdhjDP3Vxhtvo6sWJI=;
	h=To:Subject:From:Date:From;
	b=J6XOY0R8BIs03Rrsmsa1dBlhHWzFnWGZl61hfzqpgEBSbGuLJ82VwObtxNUe082kj
	 +uspAcj0k3pWUnxlRgWRhqiMRWXr6oKDv3BoTkjYkuMflEh3tIO4sLN+knXT3deJWb
	 8FdvinRMB78wdyIAPnaanGZuH5F8Wn1eb+O/hTLKmixCdO0MD8cZU0c1g6lT997zwf
	 edJ2I47w/vtVsOgh/HA34AN/eBpJ77QfqcYqnboIHDXh112KpIamaHTBo21zUF6NY7
	 TFEBNlIZrfe0qXbZ3VdnmOfR3ZoyvlNgls3wrTLbOjq/tkIfrblYuOjurrOS0pi7ww
	 sHo39TjWSmVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A0BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124368746.25553.6963721874348075440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2c32b56729ded3834e5abd28ff1ca412ca6729080d8c63eacc96b855577336
Date: Sat, 17 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671243687
