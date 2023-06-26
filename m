Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5205063C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1957C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687798388;
	bh=KS1mzGMDdYw2kAQZfKhdWoGaVhn1m06moqoGx20NU+I=;
	h=To:Subject:From:Date:From;
	b=p1GTHBhijL7DNesbfJOBuHJcHyt4PoNpmjTiiql2I5vRBddagPJsWDlh4FxjvZmHm
	 Y9s1cZPkoOumzVoC2DxzuDOsHu35D5HoQK90Bq2dykE40erqyTt83rW5+iu+DEJJ8L
	 7WAWBL0voGyLZZ6I/DCMeRby8FAwFZCa+y6ECdP8kpbNK29qFK46KtU6fIc4AgOoph
	 Ac82yGo2bommKVr1XYY+IN97U2Y+Lxrcle+LZuAksNiUn43ft2HBVxDcb2ro9B4Sw0
	 nQVFutOKjpw6mbNcR7gTxJ/4p3u2doqme11N+Xl45GclnNW5nTaZfJmF87+YvR01Yg
	 PjYfodIneefOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B6EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779838868.17945.13664204817583969529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fa45a6bb163c752563a406545d083182679be723dd59ae5d2d6244c59c3b33
Date: Mon, 26 Jun 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687798388
