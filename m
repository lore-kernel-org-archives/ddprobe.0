Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA68EA1
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 02:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05F1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677723365;
	bh=WzOCfPfeaXNdRcWU2lq/qw1v7Ps3uXPGIkUK3APFCaE=;
	h=To:Subject:From:Date:From;
	b=Su6ThWkd8os6990MzDIMMdQ+dWeS9G3DL81A+mWSJv0H4cYURtXiAdpSuMJ71LgtV
	 oaxfSH+sXvsgGMrvzb77VXfkm33Adshw8AhENFQSNrwMB06aOJDM0pr77d2zkwVkkP
	 brLmKw08aFfdmLSPD3dimKhs5iZP9UWNWO71CXOF5UI2bVQXQgQmg3c8ECYZ3k3QIP
	 jrvjA+S0ANAvj2fJmf03MDBvmG0JRBqc+SgsmAjp/+M+jXIMJKeRjahGHpPRSaI67/
	 50C7d72fX51zqkwJWTNswTLdf3KZlTUVGFd184YjEXwbyRW02Rk9SbRAFPOBwHHt5l
	 Kd80zNzHnDdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4168C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 02:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772336579.32508.15862727984509739427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464305e5ce3c85e96374cc4767ca66a3a4aaadbcc0826772241bcf9f63a93d20
Date: Thu, 02 Mar 2023 02:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677723365
