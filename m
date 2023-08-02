Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60852110C
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48ABC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690950128;
	bh=Bl4V+7H5rI7OhDGRfY3ibyidheF4XTJRJMd/wCXbuHY=;
	h=To:Subject:From:Date:From;
	b=kX6Qgm9C7XlOwsrASvk7jCVn2PLmlNfVF+q2mEWdhiclPySSIfk8y6gkpcg+zdH7o
	 uByEGcEkgMpjMO1mc0RhGao9wqQRICz5ahLpPTChqnZb0yhHAMa2wLWuRB0ZspLqjk
	 qRq8Nph7PZG25PDAJEaWzErLZo2fsihwbgIP//BDZZR5y7oIjmkn4bJVmsAvIvu20v
	 xiZKF1aQaiLthqRWlgwyA9zFVtRWP2u7D85CpQug+bhjamjNUTyBBwl4k7RI5rvppx
	 u2zeuEST3B2/5Y72bo1kmlPs+sVL2ez+T0bNVQaQcPpnat4DbamTqqRJcvMjAi7ccD
	 Hde1Dn6CcpNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B273AC001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169095012872.21657.9793355680711256461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93e0cac164ca77a3ecbdd61fdf0857c4f46315af8b25008c5a416aa54703d5a
Date: Wed, 02 Aug 2023 04:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690950128
