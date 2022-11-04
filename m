Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA67E1C3F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D57BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667575854;
	bh=44SBvum8QDilzbH0SGUH89FS0Si00y1OidxTs6mCAyI=;
	h=To:Subject:From:Date:From;
	b=dgsCW1URzxUdS9eugmmbyKK3LiPXjwPM5zQCSKkvNbRGFIfUl+oC0l0Mum0WI2ItH
	 VMj35EjoFXqGgYV6PvA6g+bjJJTg4yjeDVwWrg2GIn4qVCW9xNxnlwQABYpk/uJIAz
	 2VQtIHmwoD3mxW54qvQ/SOuFShSEPrIGkWtTA/5DrVdpx6YYj/+6NwbtAK+Pjo44Bt
	 3RXLB/R0GQi5CEk+fqjT+reytCx1UALO1Sf4DBadX9Gt0d+hMQWSOW9txcr/TRc+wK
	 HfR6ub6EXs+9T6wRwkxoxrditcULgtv9lCE58tMIx/5NBdsBtNmfJWA9DCtuGcOd+h
	 BPZPyf8SwOoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E5DC43219
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757585435.28390.7108940318349174715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2c5efcedcef3f5c490abf77ad8ce05ef7e5401cfadc1d8ddd504e9fb52cf4e
Date: Fri, 04 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667575854
