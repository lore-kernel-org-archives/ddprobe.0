Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D052A23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC153C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687948388;
	bh=0OJIYBrqqfCBd4uxsWIfX9NYYVbVpp8U/I1Xi07EWIM=;
	h=To:Subject:From:Date:From;
	b=lwYCwg2LrPkbdHcQL8Gjw60CRgcpnfkjo26exXtgoZ1b9QwC5PDKarSiu9IYIT/+r
	 AvxV+kveC+gOLSCNcseyCY/7nlRalpmdLC/v0O2UnzFkZQ1Q/neBOceLTd2Z5O1rDA
	 URVRfRB+ersHn+y6cDGEaE3zRTPmXA5dJ3kNhsn4bS7z3mTQh7tR7K+oVaoCtkC3/j
	 ISQlWEctU2DilCRzAuSJJ6CsOV7+vvilWUHdQnp0o2Kt2TmLYKj/THKv28JH9NPOAG
	 wzetZLQYpN2XCKBKD4T7Dlzk6KJSyKjpN/XUACClOdzQvgozPOycSR6ntQ1jUNYu9T
	 gO9OAFIJLVzlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC050EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794838869.20971.2189561803879149575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84594fa9bb116fe33b1a404861cb4048fff19a6059a77172e81c26b3cfa5bdae
Date: Wed, 28 Jun 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687948388
