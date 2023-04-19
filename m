Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489FEC941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC616C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681926306;
	bh=4gF4YpK8Q3Vb38m99Csp6Y4MGZRWYtkf2b4nvpHKKvo=;
	h=To:Subject:From:Date:From;
	b=WVmPp+bqR4fRApbu/2kB2WuXShTIMS6gjxEmcB/M89UyqjTxZCeUVxw70BOdF9ks0
	 zktqc80dS4UPe2kx13wbEhlFPYIoMItuhdo07yKYIuAu+vUVQRNlyJCjy3DdFOX72K
	 P9CECKOKaab4wFGBbXaf6dVQR8g2PXf5nJJbU9PZ3ej9uL6HVmXq4k4HBMGMceqzLc
	 MlZA25QSPGkrIaCeBeSPXN0QcoA3clxfJq++xdtrvmjMjKIu2xKg76wToURYO8VnmM
	 zOcV5yH/grhaZ5y+eDV/JbqNPlHPtnzVsDPqhbp7et3T4pYM7gXXoOkKUNpY86xbpp
	 mU/QghBXZhzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC105C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192630575.24120.1613400659358522435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0f7b8efd8a46ca54fd89031a28560ba14dd7a9041854de631a91322f2ea04e
Date: Wed, 19 Apr 2023 17:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681926305
