Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC84A20E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F583C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671200487;
	bh=GFS6c59m3+ZU53hsOJqqPjSk24QyMa9DcBrPXlPYcSk=;
	h=To:Subject:From:Date:From;
	b=tV0/Tbbt8WV0av8BQkhXGf2DNMHvYKAYIreazvxQXxGnUSlsTZp96dxfd89zdyO0J
	 C+nRm+9Q7hqMMIqRbdBJD29jx3sQilwekA+53umVT7A5w1nBWyZ6XMLREfFTSHLKZO
	 FfGlOrx9tuJNBJwQ/kLHyESr47eELMLdnAlrNmZhs0gIdgzJZrvGwduGRues8KY0Ih
	 NGmJzb1WarFwGjpPdXpSKiEKMA/XeqKb8iknNnHb0Ky964g5D/Cw2EsD2HRk2hxXll
	 ISbhuNIUN89ZScqcO4eMQlRdFx/HFILQ4q7c4ZjHnkVGG/JQeyFIBdzUPEaMRXu/Kn
	 qP3LgtF7zWyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AE8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120048740.21194.16679271994233527604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be86eb16e9d1244df4b5c135f469e3050ad7611ca197d3ef39994e620b4c981
Date: Fri, 16 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671200487
