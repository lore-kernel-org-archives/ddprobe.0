Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3447E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7108EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666312853;
	bh=Ii5T7qNseTfPDYjirYEIVO5D+X+UxDaRFIhbcm/33xw=;
	h=To:Subject:From:Date:From;
	b=OaF5zxYlDd/ebDqwYqKlfG7PFZTalLsafe+WLg8Ekb44an4pMAKJFln5n/PjtcVXt
	 c2Mfcu0q8yHbF230HexbAMuNrW2s+lOcOkexqy18H8Dw40EUgsVf+wl1C1FS5UVge4
	 Etajdn2RMvw0DL5JTxwP08aA5NvptJ9yy64qM8wHF0RyUMXyGuyyfYQ15pmesQKGsM
	 iiydm9rjp952gCJX83B+EZFxBLc8DJOamAe4kr+Tt1eXsXW9Etjd6DKs9i2yOX2A6Z
	 K+J7pSuSBQN3pOhyqrxdpgU47II7hB1WgnEvM/iY/RXmr+1pKECor+S0Wg98Pi0bry
	 8kCLE1VB9nrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4BFC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631285336.22960.1782699245123183614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdbd63d0e51892c271ba736ace8f8b4e646a43b16308678bb9141b034b4222b
Date: Fri, 21 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666312853
