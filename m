Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4941365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C483C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671575487;
	bh=+QaYYStXIneqkghbSZKCMp+ZZ/6ZWb88IGylErOFk88=;
	h=To:Subject:From:Date:From;
	b=p2p+8WEX1yfcDviCoPrls/WFKdZgmjs+a4bXhlaIme2B8sEMbiOLKjsphhRDWhvSE
	 7Q9JpVXR5sg0waDwhd8fv3V8fiqAaPz8T47Ur1aQENRihQc56HdO0CNJAOoBHeveBY
	 EcPK4KXNT5XOceh+Z32/B2204Xx1ufCLf4wIzoUK1Qu+86QqEOdGAz53AEfuNBAi2d
	 u4p3lXyXHHWvMsACmBQM6C1bF58NGFgbhhHw5R/bP8Aobts5xo6yHecH7eF5BWiSCN
	 hFFqJ+WnWWwZAZUqgqBm0rwBlwhF2MdGPn2r/UliCqVqSqVGIfygKrio+vdMc5OuVg
	 wJ+/9HVXwO/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E11C3DA6E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157548739.19959.11928882896219129508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e58cb967c0ccb05a3fe7b6b273dd5b599f69236bfbfc21cdb0f4431b5e16a12
Date: Tue, 20 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671575487
