Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2FA33DF
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BC2C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665613853;
	bh=xtsSetuICS9/AkPI9CGVeJ5HHS6lZLIefztgk6qXIpE=;
	h=To:Subject:From:Date:From;
	b=or9y/gOgvYw2SauKnyfbCIeIQjVA8g4xaJpIrgQgT9+iCAmmVlO1JWy/jUTyIWQR2
	 wSNIHdV06cZytLfrLtK1YoNcDy6TtF+DGU5Ujjsa2emv+DlDMVH9k0L57pK7RoA1VX
	 fZUMjqcyJqdXXFFCfQtQQF7fl3nkyTkxBbQz8uzT4h0Izv+cUr97ra/NkIkA24DG0T
	 TFhpiNeGIFvvc1to16X6zlsb6IL/oJRWQF44kxkV3ZWwnROFqQuTCcXHpm3r91//10
	 Mxg6rz7n7hZofK3qv/9QTCs//5BGnqF1Q5E2hJg0IPGJVzxDrN+3GkfCOD4JSWG2U6
	 fIeQfWiTRqt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54780C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561385333.11951.13715487920684176748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6873f87b24423926c5eecea952dc82047d56387d214065fc639f17fd49e8002
Date: Wed, 12 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665613853
