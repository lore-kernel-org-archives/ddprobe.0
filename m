Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79A4A461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D4FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669663254;
	bh=lH6iIjxu4UDE23pzTYJFdFgOy9ZBZasvEA+OhnmbpJQ=;
	h=To:Subject:From:Date:From;
	b=AHPrS4CcS3HOeeTm545dFypdl2oNV76rvUalr2vMMhAIpH++p8wZpHuin4FlCPT4C
	 ZRipBXbgEGgxezEQ+AgNG/MvTOvuu9GkDSkD4hd5n4tGLbPZX1SZdl7gJSBQhv9IpE
	 mOXsEorhYUR8a0TMlnd1hD/SZEbSWhZX+fr/w19TCPMhaxuh01QEIcf4fFbz0G8prN
	 byetfjSEWh3baTZWVhnX6kAQECCVjYRDQKkW/A0vWNYCY8Rbe6Zr5lWE24xCwc2C1D
	 kUOmUCaegJOf2sw+HGTna5GOlpLnF8DKUsn3OmN3CRrLxG7+cjDcsFNIVmnN9ycQ4x
	 LR97QSYjZWj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577DEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966325434.6258.12381665038990737201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09774ead5c787f94cc7f97bf7085720403d8472c95a7e9ad25aab64a7dc3b9e1
Date: Mon, 28 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669663254
