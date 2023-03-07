Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFCF2577
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 08:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C38C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678176545;
	bh=G8aXsupJZAeW+bjQ1MpAW4jLWBATQJ2/d5bb4cbfM/Y=;
	h=To:Subject:From:Date:From;
	b=SkhuhQRAgiHGytJE4KeSiQucxHiMDD1Yy6G3//RNDgrG0X2Or0cB5SGPwbZk4GfTv
	 pZYDnquyMsSdkzIT3awzBYil+1XYruJvveIc5vO6imrf7stRTwpvorYwxSSAbRf9HU
	 ZTUTSIAP2+Iawym4lr6l7xa/WXY+fxdCj+CG+MDJY/mRvVLyfeG687d1hm4CZGJflZ
	 29a/xa3Ttlrbyq1fYASuvRE5Lp/DfQVkqSIj4vlO9tyczQ7FGYvb7NQvB0j4dsl/Ib
	 ye3pJiG+CFNTWXeQH0iVB56kBJuazQNKyFUqlZ2Jm0KvfTdipk6hM1xmOPRsDUpFbU
	 P5jGF+HX+uBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A06C678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 08:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167817654578.19442.9649910571514337361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c633ff15b2fef3cd4ee26752d05a56f22e9e4c51656dc14c7697649be663fae
Date: Tue, 07 Mar 2023 08:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678176545
