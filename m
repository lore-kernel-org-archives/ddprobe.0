Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062F128F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 981A3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672421487;
	bh=jxkNTyTltMMUP/W/96fI2CatYZB3Z3EfvhRh2AwBJWY=;
	h=To:Subject:From:Date:From;
	b=CMlRoXVenaFDFkcCzLZD+LScPlMHzQnpn8pcHN1m461oQuGBhsMoOCpDWcMHtpqMg
	 Q/GQiyvs15sFgo3R55nvP4L5LbwspNsLTtydU8Ud7Fp6jarRbr58LZFg5tNH4GJZx6
	 WcHyz7ccISeFR5H5+PrGGvA4V0UFeOo4aVHRelVyX3/p6uKW22//OofuWS80z4bLhw
	 PssPdaOvB1cSSj/GuifUFHiVkrKZUo4+s1BabzwRGHTBsBEE4sPG7dMOwCSmp4Fjqw
	 OIhdf59vH6gj3NmKhitBEkTJuNN1maRsAN2bKpZkTz04aqQN7ffNfaLooipoIjHLv2
	 GEcp9HVdGZo3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A80C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242148744.12730.14672218360086153620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d05a263f6213e04bf3f373f544c1d1d746002dfd55915694528af7a12540b6
Date: Fri, 30 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672421487
