Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E778C186F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86348C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670759487;
	bh=vjidFP+wng3bgALb2rinPRWdm+HhkuXh84G148vrEPk=;
	h=To:Subject:From:Date:From;
	b=D7PZTpOE9sA4/C60Nw9KLyWXIl4sYHMkAVxx8dlYWsxo6LGCzo94v2nLiy/RlMlPr
	 7WtLWlR7mhAmIxbOpxjKQn3t3LXKJo+mht+Aqd8JAOysYe1Byq+exNpzuUpPyEbEyH
	 NYY8+u/NQGE7XSZx6+Cw10ES89b5jPbw0kijT4WZe/oVI/N79K1JidCI6UYZ2BzUsW
	 G86l+ybE4mdH2QYCUNWERUI1TYDlWneIxLgY5hxENAkeHGa/ZcyTxaVZfPFpGkKIVb
	 4SyJseuHOrJ4NPX/uUTQBhVgCVQGJtkW7dhRqBVpDfKIGISS0BDHV48pETzZUTxk9Z
	 Bopxora9lOI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9CEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075948740.30549.10455563866809054245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f40ba28570ca3c6aa0112d8e95c3bbcdd2c85131a55167783cce2ac2b51ac11
Date: Sun, 11 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670759487
