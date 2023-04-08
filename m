Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3BC15A0
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 03:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3154C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 03:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680924065;
	bh=RXkDHtw32nWyiofwm3jYloSN/YphpRX/6vftECN90Ac=;
	h=To:Subject:From:Date:From;
	b=KOCJvG6EC15ASnwF6iYOvtWhrzrnf9Zv4txV7LrJ8jkWRjvlPTCRP616P1YUiOwQT
	 oY7XSkLzasUz1pQRvsqgcBmxvTVvnEjlHJ+VdrWK0B6CI+2ks5Kyw3UPHDrQUzdxO2
	 WQvYckxzxCpKtBc3A8uZcSpWsUvIaaSgG41hThC7MBJWerxrknM5QiO+Crbt9TOI8d
	 ifL0JyNqnZm2bNnMak7KLk3/6+EO23WnEL/3bwOZpeYTG61fjjGBjPhVULR5pYEV+x
	 RC/vqznZ2sLbfvxBlGuDCiQJAlz1laNgkZbI56g0z+0X9YsFPhwXyfVJmhNhSpB+l7
	 X9f32IUI/fTEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AB3C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 03:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168092406581.4982.2973448190498719211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ef30da567ee76840663b5d00a923420c39a2a2410dd496dc5ae22483eab9af
Date: Sat, 08 Apr 2023 03:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680924065
